//
//  NSDate+Format.h
//  网易彩票2014MJ版
//
//  Created by muxi on 14-9-24.
//  Copyright (c) 2014年 沐汐. All rights reserved.
//  时间格式化：
//  本类目前专门处理小时:分钟式的日期时间，其他格式的日期待续。
//  1.新增加了时间转时间戳的方法：

#import <Foundation/Foundation.h>

@interface NSDate (Format)



/**
 *  时间格式化为：小时分钟
 */
-(NSString *)stringTo_H_m;

/**
 *  时间格式化为：时间戳
 */
-(NSInteger)timestamp;

-(NSString *)timestampString;



/**
 *  获取今天00:00的时间戳
 */
+(NSInteger)timestampAtTodayZero;


/**
 *  获取当前时间的时间戳
 */
+(NSInteger)timestampAtTodayNow;




/**
 *  获取昨天任意时刻的时间戳
 */
+(NSInteger)timestampAtYestodayClock:(NSInteger)clock;


/**
 *  获取昨今天任意时刻的时间戳
 */
+(NSInteger)timestampAtTodayClock:(NSInteger)clock;

/**
 *  获取昨明天任意时刻的时间戳
 */
+(NSInteger)timestampAtTomorrowClock:(NSInteger)clock;


/**
 *  格式化为指定格式的时间格式
 */
-(NSString *)timeStringFromDateWithFormatString:(NSString *)formatString;





@end
