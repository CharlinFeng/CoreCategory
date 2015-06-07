//
//  NSString+Extend.h
//  CoreCategory
//
//  Created by 成林 on 15/4/6.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)

/** 删除所有的空格 */
@property (nonatomic,copy,readonly) NSString *deleteSpace;






/*
 *  时间戳对应的NSDate
 */
@property (nonatomic,strong,readonly) NSDate *date;



/**
 *  时间戳转格式化的时间字符串
 */
-(NSString *)timestampToTimeStringWithFormatString:(NSString *)formatString;




@end
