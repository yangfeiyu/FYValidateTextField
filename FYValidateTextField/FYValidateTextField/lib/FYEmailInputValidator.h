//
//  FYEmailInputValidator.h
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FYInputValidator.h"

@interface FYEmailInputValidator : FYInputValidator

- (BOOL)validateInput:(NSString *)inputString;

@end
