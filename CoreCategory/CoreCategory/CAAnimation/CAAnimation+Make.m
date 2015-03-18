//
//  CAAnimation+Make.m
//  4s
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "CAAnimation+Make.h"





@implementation CAAnimation (Make)


/**
 *  转场动画
 *
 *  @param type 类型
 *
 *  @return 转场动画实例
 */
+(CATransition *)animationForRandomTransitionForType:(CAAnimationTransitionType)type{
    
    CATransition *transition=[CATransition animation];
    
    //动画时长
    transition.duration=.8f;
    
    NSInteger i=arc4random_uniform(10);
    
    transition.type=[self animaTypeWithTransitionType:type];
    
    NSUInteger subIndex=i%4;
    
    //设置转场动画的方向
    NSArray *subtypes=@[kCATransitionFromTop,kCATransitionFromLeft,kCATransitionFromBottom,kCATransitionFromRight];
    transition.subtype=subtypes[subIndex];
    
    //时间函数
    NSUInteger timingFunctionIndex=i%5;
    NSArray *funcNames=@[kCAMediaTimingFunctionDefault,kCAMediaTimingFunctionEaseIn,kCAMediaTimingFunctionEaseInEaseOut,kCAMediaTimingFunctionEaseOut,kCAMediaTimingFunctionLinear];
    transition.timingFunction=[CAMediaTimingFunction functionWithName:funcNames[timingFunctionIndex]];
    
    return transition;
    
}



+(NSString *)animaTypeWithTransitionType:(CAAnimationTransitionType)type{
    
    //设置转场动画的类型
    NSArray *animArray=@[@"rippleEffect",@"suckEffect",@"pageCurl",@"oglFlip",@"cube",@"reveal",@"pageUnCurl"];
    NSUInteger i=arc4random_uniform(animArray.count);
    
    if(CAAnimationTransitionTypeRamdon == type) return animArray[i];
    
    if(CAAnimationTransitionTypeWater == type) return animArray[0];
    
    return animArray[i];
}





@end
