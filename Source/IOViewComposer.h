//
//  IOViewComposer.h
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IOComponent;

@interface IOViewComposer : NSObject

- (UIView *)viewForComponent:(id<IOComponent>)component;

@end
