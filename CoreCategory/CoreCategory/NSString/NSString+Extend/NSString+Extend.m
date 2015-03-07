//
//  NSString+Extend.m
//  新浪微博2014MJ版
//
//  Created by muxi on 14-10-17.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import "NSString+Extend.h"
#import "CoreConst.h"



@implementation NSString (Extend)


#pragma mark - 图片名处理区：
#pragma mark  不同的ios系统版本自动加载对应的图片名：如ios7自动添加_os7
+(NSString *)imageNamedForDiffiOS:(NSString *)name{
    
    NSString *imageName=[name copy];
    
    if(ios7x) imageName=[NSString stringWithFormat:@"%@%@",imageName,@"_os7"];
    
    return imageName;
    
}





#pragma mark  不同的屏幕大小自动加载对应的图片名：如iphone5自动添加-568h
+(NSString *)imageNamedForDiffScreen:(NSString *)name{
    
    NSString *imageName=[name copy];
    
    if(iphone5x_4_0) imageName=[NSString stringWithFormat:@"%@%@",imageName,@"-568h"];
    
    return imageName;
    
}


#pragma mark 处理json格式的字符串中的换行符、回车符
-(NSString *)deleteSpecialCode {
    
    NSString *string = [self stringByReplacingOccurrencesOfString:@"\r\n" withString:@""];
    
    string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    string = [string stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    
    return [string copy];
    
}


@end
