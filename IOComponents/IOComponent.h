//
//  IOComponent.h
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#ifndef IOComponents_IOComponent_h
#define IOComponents_IOComponent_h

#import <UIKit/UIKit.h>

@protocol IOComponent <NSObject>

- (void)configureView:(UIView *)view;
- (Class)viewClass;
- (NSArray *)childComponents;

@end

#endif
