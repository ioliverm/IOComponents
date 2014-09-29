//
//  IOLabelComponent.m
//  IOComponents
//
//  Created by Ivan Oliver Martínez on 9/29/14.
//  Copyright (c) 2014 QuietSoft. All rights reserved.
//

#import "IOLabelComponent.h"

@interface IOLabelComponent ()

@property (nonatomic, copy) NSString *text;

@end

@implementation IOLabelComponent

- (instancetype)initWithText:(NSString *)text
{
    if (self = [super initWithChildComponents:nil])
    {
        _text = [text copy];
    }
    return self;
}

- (void)configureView:(UIView *)view
{
    UILabel *myView = (UILabel *)view;
    myView.numberOfLines = 0;
    myView.bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    myView.text = self.text;
}

- (Class)viewClass
{
    return [UILabel class];
}

- (NSArray *)childComponents
{
    return nil;
}

@end
