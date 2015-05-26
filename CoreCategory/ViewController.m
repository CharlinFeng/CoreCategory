//
//  ViewController.m
//  CoreCategory
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "CALayer+Anim.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
        [_redView.layer animWithKeyPath:KeyPath_TRANSFORM_TRANSLATION_X kfs:@[@(-8),@(0),@(7),@(-6),@(0),@(6),@(0),@(4),@(0),@(2),@(0),@(-1),@(0)] duration:.5f repeatCount:NO];
}


@end
