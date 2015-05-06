//
//  ViewController.m
//  CoreCategory
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UIImage *image = [UIImage imageNamed:@"sun"];
    
    [image savedPhotosAlbum:^{
       
        
        NSLog(@"回调");
    }];
}

@end
