//
//  ViewController.m
//  CoreCategory
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extend.h"
#import "UIImage+Color.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UIImage *image = [UIImage imageNamed:@"ep"];
    
    UIImageView *imageV=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    imageV.image = [image imageWithGradientTintColor:[UIColor greenColor
                                                      ]];
    [self.view addSubview:imageV];
}

@end
