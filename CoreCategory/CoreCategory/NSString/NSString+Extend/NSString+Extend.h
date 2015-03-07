//
//  NSString+Extend.h
//  新浪微博2014MJ版
//
//  Created by muxi on 14-10-17.
//  Copyright (c) 2014年 muxi. All rights reserved.
//  字符串常用扩展

#import <Foundation/Foundation.h>

@interface NSString (Extend)


/**
 *  ---------------------------------------------------------文件名处理区---------------------------------------------------------
 */

/**
 *  不同的ios系统版本自动加载对应的图片名：如ios7自动添加_os7
 */
+(NSString *)imageNamedForDiffiOS:(NSString *)name;




/**
 *  不同的屏幕大小自动加载对应的图片名：如iphone5自动添加-568h
 */
+(NSString *)imageNamedForDiffScreen:(NSString *)name;



/**
 *  处理json格式的字符串中的换行符、回车符
 */
-(NSString *)deleteSpecialCode;

@end
