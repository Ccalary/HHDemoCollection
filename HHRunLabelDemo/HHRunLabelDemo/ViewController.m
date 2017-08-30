//
//  ViewController.m
//  HHRunLabelDemo
//
//  Created by chh on 2017/8/30.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ViewController.h"
#import "HHRunLabelView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    HHRunLabelView *runLabel = [[HHRunLabelView alloc] initWithFrame:CGRectMake(10, 100, 100, 50)];
    runLabel.backgroundColor = [UIColor grayColor];
    runLabel.textColor = [UIColor redColor];
    runLabel.speed = 0.5;
    runLabel.text = @"我是一个局部的小跑马灯啊";
    [self.view addSubview:runLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
