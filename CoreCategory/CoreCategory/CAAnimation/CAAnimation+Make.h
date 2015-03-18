//
//  CAAnimation+Make.h
//  4s
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

typedef enum{
    
    //随机
    CAAnimationTransitionTypeRamdon=0,
    
    //水波
    CAAnimationTransitionTypeWater,
    
    
}CAAnimationTransitionType;


@interface CAAnimation (Make)


/**
 *  转场动画
 *
 *  @param type 类型
 *
 *  @return 转场动画实例
 */
+(CATransition *)animationForRandomTransitionForType:(CAAnimationTransitionType)type;

@end
