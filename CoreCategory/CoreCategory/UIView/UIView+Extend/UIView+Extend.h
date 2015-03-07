//
//  UIView+Extend.h
//  wucai
//
//  Created by muxi on 14/10/26.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreConst.h"


@interface UIView (Extend)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic,assign) CGFloat radius;



/**
 *  添加一组子view：
 */
-(void)addSubviewsWithArray:(NSArray *)subViews;


/**
 *  添加边框
 */
-(void)setBorder:(UIColor *)color width:(CGFloat)width;




/**
 *  批量处理
 */
/**
 *  批量添加圆角
 */
+(void)setRadius:(CGFloat)radius views:(NSArray *)views;

/**
 *  批量添加下划线
 */
+(void)setBottomBorderColor:(UIColor *)bottomBorderColor views:(NSArray *)views;

/**
 *  指添加边框
 */
+(void)setBorder:(UIColor *)color width:(CGFloat)width views:(NSArray *)views;


 

@end
