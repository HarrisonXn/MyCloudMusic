//
//  UIImage+SuperUI.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/14.
//

#import "UIImage+SuperUI.h"

@implementation UIImage (SuperUI)
+ (UIImage *)imageWithColor:(UIColor *)color {

   CGRect rect = CGRectMake(0.0f,0.0f, 1.0f,1.0f);

    UIGraphicsBeginImageContext(rect.size);

    CGContextRef context =UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);

    CGContextFillRect(context, rect);

    UIImage *image =UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

   return image;

}

@end
