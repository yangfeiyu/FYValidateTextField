//
//  FYPhoneInputValidator.m
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import "FYPhoneInputValidator.h"
#import "RegExCategories.h"

@implementation FYPhoneInputValidator

- (BOOL)validateInput:(NSString *)inputString {
    
    if (inputString.length <= 0) {
        self.errorMessage = @"请输入手机号码";
    } else {
        BOOL isMatch = [inputString isMatch:RX(@"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|70)\\d{8}$")];
        if (isMatch == NO) {
            self.errorMessage = @"请输入正确的手机号码";
        } else {
            self.errorMessage = nil;
        }
    }
    
    return self.errorMessage == nil ? YES : NO;
}

@end
