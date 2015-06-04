//
//  UIViewController+Extend.m
//  CoreCategory
//
//  Created by 冯成林 on 15/6/4.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "UIViewController+Extend.h"


@implementation UIViewController (Extend)

/** 隐藏左上角按钮 */
-(void)hideLeftItem{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]];
}




/** 校验输入框 */
-(BOOL)checkTFWithTrigger:(UIView *)trigger checkTFModelsBlock:(NSArray *(^)())checkTFModelsBlock resBlock:(void (^)(NSString *res))resBlock{
    
    if(checkTFModelsBlock == nil){
        
        NSLog(@"错误：请传入CRTFModelsBlock"); return NO;
    }
    
    NSArray *checkTFModles =checkTFModelsBlock();
    
    __block NSString *msg = nil;
    
    [checkTFModles enumerateObjectsUsingBlock:^(CheckTFModel *checkTFModle, NSUInteger idx, BOOL *stop) {
        
        NSMutableString *str = [NSMutableString stringWithString:checkTFModle.textField.text];
        
        [str replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:NSMakeRange(0, str.length)];
        
        if(str == nil || str.length == 0){
            msg = checkTFModle.msg;
            *stop = YES;
        }
        
    }];
    
    BOOL res = msg == nil;
    
    if(!res){
        
        if(resBlock != nil) resBlock(msg);
    }
    
    return res;
}

@end
