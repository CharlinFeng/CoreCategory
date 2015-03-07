//
//  NSArray+Extend.m
//  Wifi
//
//  Created by muxi on 14/11/27.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import "NSArray+Extend.h"

@implementation NSArray (Extend)


#pragma mark  数组转字符串
-(NSString *)string{
    
    if(self==nil || self.count==0) return @"";
    
    NSMutableString *str=[NSMutableString string];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [str appendFormat:@"%@,",obj];
    }];
    
    //删除最后一个','
    NSString *strForRight = [str substringWithRange:NSMakeRange(0, str.length-1)];
    
    return strForRight;
}





#pragma mark  数组比较
-(BOOL)compareIgnoreObjectOrderWithArray:(NSArray *)array{
    
    NSSet *set1=[NSSet setWithArray:self];
    
    NSSet *set2=[NSSet setWithArray:array];
    
    return [set1 isEqualToSet:set2];
}



@end
