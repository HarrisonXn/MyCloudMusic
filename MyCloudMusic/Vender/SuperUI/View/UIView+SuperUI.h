//
//  UIView+SuperUI.h
//  MyCloudMusic
//  扩展显示隐藏控件快捷方法
//  Created by 邢世航 on 2023/4/23.
//

#import <UIKit/UIKit.h>

#import <MyLayout/MyLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SuperUI)
/// 设置隐藏控件
-(void)hide;

/// 设置隐藏控件，但还是暂用位置
-(void)invisible;

/// 显示控件
-(void)show;

/// 显示控件
/// @param show 是否显示
-(void)show:(BOOL)show;

/// 小圆角
-(void)smallRadius;
@end

NS_ASSUME_NONNULL_END
