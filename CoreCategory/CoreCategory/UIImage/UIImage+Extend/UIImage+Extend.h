//
//  UIImage+Extend.h
//  CDHN
//
//  Created by muxi on 14-10-14.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extend)





/**
 *  不同的设备自动加载对应的图片名
 */
+(UIImage *)deviceImageNamed:(NSString *)name;




/**
 *  不同的系统自动加载对应的图片名
 */
+(UIImage *)systemImageNamed:(NSString *)name;





/**
 *  拉伸图片:自定义比例
 */
+(UIImage *)resizeWithImageName:(NSString *)name leftCap:(CGFloat)leftCap topCap:(CGFloat)topCap;





/**
 *  拉伸图片
 */
+(UIImage *)resizeWithImageName:(NSString *)name;


/**
 *  获取启动图片
 */
+(UIImage *)launchImage;


@end
