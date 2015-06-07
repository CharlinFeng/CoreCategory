//
//  CRTFModel.h
//  Carpenter
//
//  Created by 冯成林 on 15/6/4.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CheckTFModel : NSObject

/** 文本输入框 */
@property (nonatomic,weak) UITextField *textField;

/** 提示文字 */
@property (nonatomic,copy) NSString *msg;

/** 快速实例化 */
+(instancetype)modelWithTextField:(UITextField *)textField msg:(NSString *)msg;

@end
