//
//  FYValidateTextField.m
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import "FYValidateTextField.h"

@implementation FYValidateTextField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, self.frame.size.height)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    self.layer.borderWidth = 0.5f;
}

- (BOOL)validate {
    return [self.validator validateInput:self.text];
}

@end
