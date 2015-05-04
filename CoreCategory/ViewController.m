//
//  ViewController.m
//  CoreCategory
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Water.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UIImage *oringalImage = [UIImage imageNamed:@"scene"];
    
    //添加水印
    UIImage *waterImage = [oringalImage waterWithText:@"新浪奇趣" direction:ImageWaterDirectCenter fontColor:[UIColor whiteColor] fontPoint:16 marginXY:CGPointMake(0, 0)];
    
    UIImageView *imageV = [[UIImageView alloc] initWithImage:waterImage];
    

    [self.view addSubview:imageV];
}

@end
