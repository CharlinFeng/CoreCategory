//
//  ViewController.m
//  CoreCategory
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "NSString+File.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    //document
    NSString *document=[NSString documentFolder];
    //caches
    NSString *caches=[NSString cachesFolder];
    
    NSString *myFolder = [document createSubFolder:@"myFolder"];
    
    NSLog(@"%@",myFolder);
}

@end
