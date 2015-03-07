//
//  UIView+Extend.m
//  wucai
//
//  Created by muxi on 14/10/26.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import "UIView+Extend.h"


@implementation UIView (Extend)


- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}



#pragma mark  添加一组子view：
-(void)addSubviewsWithArray:(NSArray *)subViews{
    
    for (UIView *view in subViews) {
        
        [self addSubview:view];
        
    }
}



#pragma mark  圆角处理
-(void)setRadius:(CGFloat)r{
    
    if(r<=0) r=self.frame.size.width * .5f;
    
    //圆角半径
    self.layer.cornerRadius=r;
    
    //强制
    self.layer.masksToBounds=YES;
}

-(CGFloat)radius{
    return 0;
}

/**
 *  添加底部的边线
 */
-(void)setBottomBorderColor:(UIColor *)bottomBorderColor{
    UIView *line=[[UIView alloc] init];
    
    //设置颜色
    line.backgroundColor=bottomBorderColor;
    
    //添加
    [self addSubview:line];
    
    //禁用ar
    line.translatesAutoresizingMaskIntoConstraints=NO;
    
    NSDictionary *views=NSDictionaryOfVariableBindings(line);
    NSDictionary *metrics=@{@"h":@(.5f)};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[line]-0-|" options:0 metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[line(==h)]-0-|" options:0 metrics:metrics views:views]];
}


/**
 *  添加边框
 */
-(void)setBorder:(UIColor *)color width:(CGFloat)width{
    CALayer *layer=self.layer;
    layer.borderColor=color.CGColor;
    layer.borderWidth=width;
}


/**
 *  批量添加圆角
 */
+(void)setRadius:(CGFloat)radius views:(NSArray *)views{
    if(views==nil && views.count==0) return;
    
    [views enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        view.radius=radius;
    }];
}


/**
 *  批量添加下划线
 */
+(void)setBottomBorderColor:(UIColor *)bottomBorderColor views:(NSArray *)views{
    
    if(views==nil && views.count==0) return;
    
    [views enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        view.bottomBorderColor=bottomBorderColor;
    }];
}

/**
 *  指添加边框
 */
+(void)setBorder:(UIColor *)color width:(CGFloat)width views:(NSArray *)views{
    
    if(views==nil && views.count==0) return;
    
    [views enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        [view setBorder:color width:width];
    }];
}



@end
