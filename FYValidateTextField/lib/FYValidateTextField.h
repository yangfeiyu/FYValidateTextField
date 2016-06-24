//
//  FYValidateTextField.h
//  HomeExpress
//
//  Created by 杨飞宇 on 16/6/22.
//  Copyright © 2016年 mnf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FYInputValidator.h"

@interface FYValidateTextField : UITextField

@property (nonatomic, strong) FYInputValidator *validator;

- (BOOL)validate;

@end
