//
//  FYInputValidator.h
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  抽象父类，没有具体实现
 */
@interface FYInputValidator : NSObject

- (BOOL)validateInput:(NSString *)inputString;

/**
 *  validateInput返回NO是，会有errorMessage返回，否则errorMessage为nil
 */
@property (nonatomic, strong) NSString *errorMessage;

@end
