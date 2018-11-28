//
//  UIView+SubtractMask.h
//  HollowOutDemo
//
//  Created by 惠上科技 on 2018/11/28.
//  Copyright © 2018 惠上科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SubtractMask)

/**
 设置镂空遮罩视图，该方法本质上是设置maskView
 如果寄宿图的内容有更新，需要手动再调用setter方法

 @param view 遮罩视图
 */
-(void)setSubtractMaskView:(UIView *)view;


/**
 获取镂空遮罩视图，用于动态修饰遮罩的一些属性

 @return 遮罩视图
 */
-(UIView *)subtractMaskView;

@end

