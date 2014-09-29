//
//  IOBasicComponent.m
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import "IOBasicComponent.h"

@interface IOBasicComponent ()

@property (nonatomic, copy) NSArray *childComponents;

@end

@implementation IOBasicComponent

- (instancetype)initWithChildComponents:(NSArray *)childComponents
{
    if (self = [super init])
    {
        _childComponents = [childComponents copy];
    }
    return self;
}

- (void)configureView:(UIView *)view
{
}

- (Class)viewClass
{
    return nil;
}

- (NSArray *)childComponents
{
    return self.childComponents;
}

@end
