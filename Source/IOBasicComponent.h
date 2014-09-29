//
//  IOBasicComponent.h
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOComponent.h"

@interface IOBasicComponent : NSObject <
    IOComponent
>

// Properties
@property (nonatomic, assign) CGSize size;

- (instancetype)initWithChildComponents:(NSArray *)childComponents;

@end
