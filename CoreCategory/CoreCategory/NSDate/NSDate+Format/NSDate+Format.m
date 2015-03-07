//
//  NSDate+Format.m
//  网易彩票2014MJ版
//
//  Created by muxi on 14-9-24.
//  Copyright (c) 2014年 沐汐. All rights reserved.
//

#import "NSDate+Format.h"

@implementation NSDate (Format)

#pragma mark - 小时:分钟 专区
#pragma mark  时间格式化为：小时分钟
-(NSString *)stringTo_H_m{
    
    //实例化时间格式化工具
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    
    //定义格式
    formatter.dateFormat=@"HH:mm";
    
    //时间转化为字符串
    NSString *dateString = [formatter stringFromDate:self];
    
    return dateString;
    
}




-(NSInteger)timestamp{
    
    //计算时间戳：
    NSInteger timestamp=(NSInteger)[self timeIntervalSince1970];
    
    //返回
    return timestamp;
    
}

-(NSString *)timestampString{
    
    //计算时间戳：
    NSInteger timestamp=(NSInteger)[self timeIntervalSince1970];
    
    NSString *timestampString=[NSString stringWithFormat:@"%li",(long)timestamp];
    
    //返回
    return timestampString;
    
}




/**
 *  -------------------------------------------------------------当天时间比较-------------------------------------------------------------
 */

#pragma mark -当天时间比较
+(NSInteger)timestampAtTodayZero{
    
    //获取当前时间
    NSDate *date=[NSDate date];
    
    //实例化时间格式化工具
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    
    //定义格式
    formatter.dateFormat=@"yyyyMMdd";
    
    //时间转化为字符串
    NSString *dateStringNow = [formatter stringFromDate:date];
    
    NSString *dateStringToday00_00=[NSString stringWithFormat:@"%@%@",dateStringNow,@"000000"];
    
    formatter.dateFormat=@"yyyyMMddHHmmss";
    
    //转换为时间戳
    NSDate *dateToday00_00=[formatter dateFromString:dateStringToday00_00];
    
    //获取时间戳
    NSInteger timeStamp =  (NSInteger)[dateToday00_00 timeIntervalSince1970];

    return timeStamp;
    
}


+(NSInteger)timestampAtYestodayClock:(NSInteger)clock{
    
    //拿到今天零点时间戳
    NSInteger timestampTodayZero=[self timestampAtTodayZero];
    
    //计算给出的时刻比今天的零点（即昨天24点）早多久？
    NSInteger hours=24-clock;
    
    //计算clock对应的时间戳
    NSInteger timestampYestodayClock=timestampTodayZero-hours*3600;
    
    return timestampYestodayClock;
    
}



/**
 *  获取当前时间的时间戳
 */
+(NSInteger)timestampAtTodayNow{
    
    //获取当前时间
    NSDate *date=[NSDate date];

    NSInteger timeStampNow=(NSInteger)[date timeIntervalSince1970];
    
    return timeStampNow;
}



/**
 *  获取昨今天任意时刻的时间戳
 */
+(NSInteger)timestampAtTodayClock:(NSInteger)clock{
    
    //拿到今天零点时间戳
    NSInteger timestampTodayZero=[self timestampAtTodayZero];

    //计算clock对应的时间戳
    NSInteger timestampTodayClock=timestampTodayZero+clock*3600;
    
    return timestampTodayClock;
    
}


/**
 *  获取昨明天任意时刻的时间戳
 */
+(NSInteger)timestampAtTomorrowClock:(NSInteger)clock{
    
    //拿到今天零点时间戳
    NSInteger timestampTodayZero=[self timestampAtTodayZero];
    
    //计算clock对应的时间戳
    NSInteger timestampTodayClock=timestampTodayZero+(clock+24)*3600;
    
    return timestampTodayClock;
    
}




#pragma mark 格式化为指定格式的时间格式
-(NSString *)timeStringFromDateWithFormatString:(NSString *)formatString{
    //实例化时间格式化工具
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    
    //定义格式
    formatter.dateFormat=formatString;
    
    //时间转化为字符串
    NSString *dateString = [formatter stringFromDate:self];
    
    return dateString;
}




@end
