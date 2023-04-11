//
//  UIColor+SuperUI.h
//  MyCloudMusic
//  扩展一些常用方法，例如：快捷创建动态颜色
//  Created by 邢世航 on 2023/4/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SuperUI)
/// 快捷创建动态颜色
/// @param color 正常颜色
/// @param darkColor 深色颜色
+(UIColor *) withColor:(UIColor *)color darkColor:(UIColor *)darkColor;
@end

NS_ASSUME_NONNULL_END
