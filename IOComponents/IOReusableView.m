//
//  IOReusableView.m
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/28/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import "IOReusableView.h"
#import "IOReusableViewCache.h"

@implementation IOReusableView

+ (instancetype)alloc
{
    // Look for a reusable view in the cache
    id retVal = [[self viewCache] reusableViewForClass:[self class]];
    if (retVal) return retVal;
    else return [super alloc];
}

- (void)willRemoveSubview:(UIView *)subview
{
    // Reuse the subview
    [[[self class] viewCache] reuseView:(IOReusableView *)subview];
}

+ (IOReusableViewCache *)viewCache
{
    static IOReusableViewCache *viewCache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        viewCache = [IOReusableViewCache sharedInstance];
    });
    return viewCache;
}

@end
