//
//  HHRunLabelView.h
//  HHRunLabelDemo
//
//  Created by chh on 2017/8/30.
//  Copyright © 2017年 chh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHRunLabelView : UIView
//字体颜色
@property (nonatomic, strong) UIColor *textColor;

//字体大小
@property (nonatomic, strong) UIFont *font;

//要显示的内容
@property (nonatomic, strong) NSString *text;

/**
 移动的速度[0~1],默认是0.2
 */
@property (nonatomic, assign) CGFloat speed;

@end
