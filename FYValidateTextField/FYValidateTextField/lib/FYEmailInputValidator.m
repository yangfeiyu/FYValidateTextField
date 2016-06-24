//
//  FYEmailInputValidator.m
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import "FYEmailInputValidator.h"
#import "RegExCategories.h"

@implementation FYEmailInputValidator

- (BOOL)validateInput:(NSString *)inputString {
    
    if (inputString.length <= 0) {
        self.errorMessage = @"请输入邮箱";
    } else {
        BOOL isMatch = [inputString isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
        if (isMatch == NO) {
            self.errorMessage = @"请输入正确的邮箱";
        } else {
            self.errorMessage = nil;
        }
    }
    
    return self.errorMessage == nil ? YES : NO;
}

@end
