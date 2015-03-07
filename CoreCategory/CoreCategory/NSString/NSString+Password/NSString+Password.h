//
//  NSString+Password.h
//  03.数据加密
//
//  Created by 刘凡 on 13-12-10.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Password)

/**
 *  32位MD5加密
 *
 *  @return 32位MD5加密结果
 */
- (NSString *)MD5;

/**
 *  SHA1加密
 *
 *  @return SHA1加密结果
 */
- (NSString *)SHA1;

@end
