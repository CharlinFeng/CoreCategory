//
//  NSString+Date.m
//  网易彩票2014MJ版
//
//  Created by muxi on 14-9-24.
//  Copyright (c) 2014年 沐汐. All rights reserved.
//

#import "NSString+Date.h"
#import "NSDate+Format.h"
#import "CoreConst.h"

@implementation NSString (Date)

#pragma mark - 小时:分钟 专区
#pragma mark 将字符串式的时间转为Date对象
-(NSDate *)dateFrom_H_m{
    
    //实例化工具
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    
    //设置格式
    formatter.dateFormat=@"HH:mm";
    
    //字符串转换为Date对象
    NSDate *date=[formatter dateFromString:self];
    
    return date;
    
}


#pragma mark  将时间式字符串转为小数
-(CGFloat)timeStringToFloat{
    
    NSString *strTime=[self stringByReplacingOccurrencesOfString:@":" withString:@"."];
    
    return [strTime floatValue];
    
}


#pragma mark  比较两个时间格式的字符串，并返回时间比较的结果
-(NSComparisonResult)compareTimeString:(NSString *)otherTimeString{
    
    CGFloat currentTimeFloat=[self timeStringToFloat];
    CGFloat otherTimeFloat=[otherTimeString timeStringToFloat];
    if(currentTimeFloat<otherTimeFloat) return NSOrderedAscending;
    if(currentTimeFloat>otherTimeFloat) return NSOrderedDescending;
    return NSOrderedSame;
    
}



#pragma mark  当前时间字符串增加1分钟
-(NSString *)dateStringAddOnMin{
    return [self dateStringAdd:YES];
}

#pragma mark  当前时间字符串减少1分钟
-(NSString *)dateStringMinusOnMin{
    return [self dateStringAdd:NO];
}

-(NSString *)dateStringAdd:(BOOL)isAdd{
    
    CGFloat regulation=isAdd?.01:(-.01);
    CGFloat timeFloat=[self timeStringToFloat];
    
    CGFloat newTimeFloat=timeFloat + regulation;
    
    NSString *newTimeString = [NSString stringWithFormat:@"%05.2f",newTimeFloat];
    
    NSString *dateString =  [newTimeString stringByReplacingOccurrencesOfString:@"." withString:@":"];
    
    NSArray *arr=[dateString componentsSeparatedByString:@":"];
    
    
    //特殊情况处理：结束时间为14:00
    if([arr[1] isEqualToString:@"99"]){
        
        dateString = [[NSString stringWithFormat:@"%05.2f",([dateString timeStringToFloat]-0.4f)] stringByReplacingOccurrencesOfString:@"." withString:@":"];
        
    }
    
    //特殊情况处理：开始时间为13:59
    if([arr[1] isEqualToString:@"60"]){
        
        dateString = [[NSString stringWithFormat:@"%05.2f",([dateString timeStringToFloat]+0.4f)] stringByReplacingOccurrencesOfString:@"." withString:@":"];
        
    }
    
    return dateString;
    
}



#pragma mark 时间戳转格式化的时间字符串
-(NSString *)timestampToTimeStringWithFormatString:(NSString *)formatString{
    //时间戳转date
    NSDate *date=[NSDate dateWithTimeIntervalSince1970:[self integerValue]];
    
    return [date timeStringFromDateWithFormatString:formatString];
}







#pragma mark NSInteger格式的时间戳直接转为字符串格式的格式化过的时间字符串
-(NSString *)timestampToTimeStringFromInteger:(NSInteger)integer FormatString:(NSString *)formatString{
    
    NSString *strFromInteger=[NSString stringWithFormat:@"%@",@(integer)];
    
    return [strFromInteger timestampToTimeStringWithFormatString:formatString];

}

@end
