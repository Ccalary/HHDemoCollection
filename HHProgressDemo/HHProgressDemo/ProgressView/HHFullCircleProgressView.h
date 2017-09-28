//
//  HHFullCircleProgressView.h
//  HHProgressDemo
//
//  Created by chh on 2017/9/28.
//  Copyright © 2017年 chh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHFullCircleProgressView : UIImageView
//更改起始位置
- (void)animationWithStokenStart:(CGFloat)start;
//更改结束位置
- (void)animationWithStokenEnd:(CGFloat)end;
@end
