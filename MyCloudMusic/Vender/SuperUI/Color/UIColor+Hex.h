//
//  UIColor+Hex.h
//  MyCloudMusic
//  用了OC的类别（Category）语法，给UIColor类动态添加了一个colorWithHex静态方法
//  目的是，可以使用16进制颜色，创建UIColor
//  也可以使用下面的宏
//  #define ColorWithHex(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16 )) / 255.0 green:((( s & 0xFF00 ) >> 8 )) / 255.0 blue:(( s & 0xFF )) / 255.0 alpha:1.0]
//
//  Created by 邢世航 on 2023/4/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Hex)
/// 从16进制创建颜色
/// @param hex 8位16进制，argb，a:ff完全不透明， 例如：0x33d6271c
/// 当然也可以扩展方法支持6位颜色
+ (UIColor *)colorWithHex:(int)hex;
@end

NS_ASSUME_NONNULL_END
