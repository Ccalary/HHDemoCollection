//
//  ViewController.m
//  HHShootButtonDemo
//
//  Created by chh on 2017/9/5.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ViewController.h"
#import "HHShootButton.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) HHShootButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self initView];
    [self initAnimationButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initView{
    _iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 60, SCREEN_HEIGHT - 60, 22, 22)];
    _iconImageView.image = [UIImage imageNamed:@"coin"];
    [self.view addSubview:_iconImageView];
}

- (void)initAnimationButton{
    
    _button = [[HHShootButton alloc] initWithFrame:CGRectMake(100, 100, 80, 80) andEndPoint:self.iconImageView.center];
    [_button setImage:[UIImage imageNamed:@"coin"] forState:UIControlStateNormal];
    [self.view addSubview:_button];
    
    HHShootButton *shootBtn = [[HHShootButton alloc] initWithFrame:CGRectMake(10, 300, 80, 80) andEndPoint:self.iconImageView.center];
    [shootBtn setImage:[UIImage imageNamed:@"icon_xin"] forState:UIControlStateNormal];
    shootBtn.setting.animationType = ShootButtonAnimationTypeLine;
    [self.view addSubview:shootBtn];
}

@end
