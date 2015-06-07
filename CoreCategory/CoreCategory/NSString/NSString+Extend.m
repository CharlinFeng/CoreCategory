//
//  NSString+Extend.m
//  CoreCategory
//
//  Created by 成林 on 15/4/6.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)


/** 删除所有的空格 */
-(NSString *)deleteSpace{
    
    NSMutableString *strM = [NSMutableString stringWithString:self];
    
    [strM replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:NSMakeRange(0, strM.length)];
    
    return [strM copy];
}






/*
 *  时间戳对应的NSDate
 */
-(NSDate *)date{
    
    NSTimeInterval timeInterval=self.floatValue;
    
    return [NSDate dateWithTimeIntervalSince1970:timeInterval];
}


/**
 *  时间戳转格式化的时间字符串
 */
-(NSString *)timestampToTimeStringWithFormatString:(NSString *)formatString{
    //时间戳转date
    NSDate *date=[NSDate dateWithTimeIntervalSince1970:[self integerValue]];
    
    return [self timeStringFromDate:date formatString:formatString];
}

-(NSString *)timeStringFromDate:(NSDate *)date formatString:(NSString *)formatString{
    //实例化时间格式化工具
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    
    //定义格式
    formatter.dateFormat=formatString;
    
    //时间转化为字符串
    NSString *dateString = [formatter stringFromDate:date];
    
    return dateString;
}


@end
