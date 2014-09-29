//
//  IOViewComposer.m
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import "IOViewComposer.h"
#import "IOComponent.h"
#import "IOReusableViewCache.h"
#import "IOReusableView.h"

@interface IOViewComposer ()

@property (nonatomic, weak) IOReusableViewCache *viewCache;

@end

@implementation IOViewComposer

- (instancetype)init
{
    if (self = [super init])
    {
        _viewCache = [IOReusableViewCache sharedInstance];
    }
    return self;
}

+ (instancetype)sharedInstance
{
    static IOViewComposer *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (UIView *)viewForComponent:(id<IOComponent>)component
{
    UIView *retVal = [self obtainViewForComponent:component];
    [[component childComponents] enumerateObjectsUsingBlock:^(id<IOComponent>childComponent, NSUInteger idx, BOOL *stop) {
        [retVal addSubview:[self viewForComponent:childComponent]];
    }];
    [component configureView:retVal];
    return retVal;
}

- (UIView *)obtainViewForComponent:(id<IOComponent>)component
{
    Class viewClass = [component viewClass];
    UIView *retVal = [self.viewCache reusableViewForClass:viewClass];
    if (!retVal)
    {
        retVal = [[viewClass alloc] initWithFrame:CGRectZero];
    }
    return retVal;
}

@end
