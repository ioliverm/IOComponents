//
//  IOReusableViewCache.h
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/28/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
@class IOReusableView;

@interface IOReusableViewCache : NSObject

+ (instancetype)sharedInstance;
- (IOReusableView *)reusableViewForClass:(Class)class;
- (void)reuseView:(IOReusableView *)view;

@end
