//
//  NSArray+Compare.h
//  array
//
//  Created by muxi on 15/1/14.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Compare)


/**
 *  数组计算交集
 */
-(NSArray *)arrayForIntersectionWithOtherArray:(NSArray *)otherArray;

/**
 *  数据计算差集
 */
-(NSArray *)arrayForMinusWithOtherArray:(NSArray *)otherArray;


@end
