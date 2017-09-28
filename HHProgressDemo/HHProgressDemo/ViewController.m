//
//  ViewController.m
//  HHProgressDemo
//
//  Created by chh on 2017/9/28.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ViewController.h"
#import "HHFullCircleProgressView.h"

#define DefineMinutes  2;
@interface ViewController ()
@property (nonatomic, strong) HHFullCircleProgressView *progressView;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, assign) int minutes;
@property (nonatomic, assign) int count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _minutes = DefineMinutes;
    
    _progressView = [[HHFullCircleProgressView alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    _progressView.image = [UIImage imageNamed:@"coin"];
    [self.view addSubview:_progressView];
    
    _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 70, 40, 20)];
    _timeLabel.textColor = [UIColor whiteColor];
    _timeLabel.backgroundColor = [UIColor redColor];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.layer.cornerRadius = 2.0;
    _timeLabel.layer.masksToBounds = YES;
    _timeLabel.text = [self changeTimeStringWithSecond:_minutes*60];
    [self.view addSubview:_timeLabel];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
  
 
}
- (void)countDown{
    if (_count < _minutes*60){
        _count++;
        [_progressView animationWithStokenStart:_count/(_minutes*60.0)];
        
         _timeLabel.text = [self changeTimeStringWithSecond:_minutes*60 - _count];
        
    }else {
        _count = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSMutableString *)changeTimeStringWithSecond:(int)second
{
    NSMutableString *timeString = [[NSMutableString alloc] init];
    int minute = second/60;
    if (minute > 10){
        [timeString appendString:[NSString stringWithFormat:@"%d:",minute]];
    }else {
        [timeString appendString:[NSString stringWithFormat:@"0%d:",minute]];
    }
    
    second = second % 60;
    if (second > 10){
        [timeString appendString:[NSString stringWithFormat:@"%d",second]];
    }else {
        [timeString appendString:[NSString stringWithFormat:@"0%d",second]];
    }
    return timeString;
}
@end
