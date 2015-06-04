//
//  UIViewController+Extend.h
//  CoreCategory
//
//  Created by 冯成林 on 15/6/4.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckTFModel.h"


@interface UIViewController (Extend)


/** 隐藏左上角按钮 */
-(void)hideLeftItem;





/** 校验输入框 */
-(BOOL)checkTFWithTrigger:(UIView *)trigger checkTFModelsBlock:(NSArray *(^)())checkTFModelsBlock resBlock:(void (^)(NSString *res))resBlock;








@end
