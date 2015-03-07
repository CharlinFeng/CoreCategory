//
//  NSString+Date.h
//  网易彩票2014MJ版
//
//  Created by muxi on 14-9-24.
//  Copyright (c) 2014年 沐汐. All rights reserved.
//  字符串转为时间

#import <Foundation/Foundation.h>

@interface NSString (Date)


/**
 *  将字符串式的时间转为Date对象
 */
-(NSDate *)dateFrom_H_m;



/**
 *  比较两个时间格式的字符串，并返回时间比较的结果
 */
-(NSComparisonResult)compareTimeString:(NSString *)otherTimeString;



/**
 *  当前时间字符串增加1分钟
 */
-(NSString *)dateStringAddOnMin;



/**
 *  当前时间字符串减少1分钟
 */
-(NSString *)dateStringMinusOnMin;



/**
 *  时间戳转格式化的时间字符串
 */
-(NSString *)timestampToTimeStringWithFormatString:(NSString *)formatString;



/**
 *  NSInteger格式的时间戳直接转为字符串格式的格式化过的时间字符串
 */
-(NSString *)timestampToTimeStringFromInteger:(NSInteger)integer FormatString:(NSString *)formatString;

@end
