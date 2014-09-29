//
//  IOReusableViewCache.m
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/28/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import "IOReusableViewCache.h"
#import "IOReusableView.h"

static const NSUInteger kMaxViewsForClass = 5;

@interface IOReusableViewCache ()

@property (nonatomic, strong) NSMutableDictionary *viewCache;

@end

@implementation IOReusableViewCache

- (instancetype)init
{
    if (self = [super init])
    {
        _viewCache = [NSMutableDictionary new];
    }
    return self;
}

+ (instancetype)sharedInstance
{
    static IOReusableViewCache *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (IOReusableView *)reusableViewForClass:(Class)class
{
    NSMutableArray *reusableViews = self.viewCache[NSStringFromClass(class)];
    if (reusableViews) return nil;
    {
        IOReusableView *retVal = [reusableViews lastObject];
        [reusableViews removeLastObject];
        return retVal;
    }
    return nil;
}

- (void)reuseView:(IOReusableView *)view
{
    NSString *className = NSStringFromClass([view class]);
    NSMutableArray *reusableViews = self.viewCache[className];
    if (!reusableViews)
    {
        NSMutableArray *reusableViews = [NSMutableArray new];
        self.viewCache[className] = reusableViews;
    }
    if ([reusableViews count] < kMaxViewsForClass)
    {
        [reusableViews addObject:view];
    }
}

@end
