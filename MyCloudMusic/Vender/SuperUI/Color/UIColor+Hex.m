//
//  UIColor+Hex.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/11.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
//((hex & 0xFF0000) >> 16))/255.0
//传入HEX与0xFF0000相与，小数点向左移动16位得到0x后面两位，除255得到0~1范围内的数值
+ (UIColor *)colorWithHex:(int)hex{
    return [UIColor colorWithRed:(((hex & 0xFF0000) >> 16))/255.0 green:(((hex &0xFF00) >>8))/255.0 blue:((hex &0xFF))/255.0 alpha:(((hex &0xFF000000) >>24))/255.0];
}
@end
