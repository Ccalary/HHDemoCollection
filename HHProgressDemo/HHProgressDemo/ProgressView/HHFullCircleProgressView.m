//
//  HHFullCircleProgressView.m
//  HHProgressDemo
//
//  Created by chh on 2017/9/28.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "HHFullCircleProgressView.h"
@interface HHFullCircleProgressView()
@property (nonatomic, strong) CAShapeLayer *roundShapeLayer;
@end

@implementation HHFullCircleProgressView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        
        [self.layer addSublayer:self.roundShapeLayer];
    }
    return self;
}

- (CAShapeLayer *)roundShapeLayer{
    if (!_roundShapeLayer){
        _roundShapeLayer = [CAShapeLayer layer];
        _roundShapeLayer.frame = self.bounds;
        CGFloat lineWidth = self.frame.size.width/2.0;
        //创建圆 clockwise 是否顺时针
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0) radius:lineWidth/2.0 startAngle:-M_PI_2  endAngle:-M_PI_2 + 2*M_PI clockwise:YES];
        //宽度为半径的2倍可以完全覆盖view
        _roundShapeLayer.lineWidth = lineWidth;
        _roundShapeLayer.path = path.CGPath;
        _roundShapeLayer.fillColor = [UIColor clearColor].CGColor;//填充为透明
        _roundShapeLayer.strokeColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3].CGColor; //随便设置一个边框颜色
        //_roundShapeLayer.lineCap = kCALineCapRound;//设置线为圆角
        
    }
    return _roundShapeLayer;
}

- (void)animationWithStokenEnd:(CGFloat)end{
    
    self.roundShapeLayer.strokeEnd = end;
}

- (void)animationWithStokenStart:(CGFloat)start{
    self.roundShapeLayer.strokeStart = start;
}
@end
