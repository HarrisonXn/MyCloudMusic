//
//  ViewFactoryUtil.m
//  MyCloudMusic
//  主要用来创建常见View，方便在多个位置使用
//  Created by 邢世航 on 2023/4/11.
//

#import "ViewFactoryUtil.h"

@implementation ViewFactoryUtil
/// 小圆角，主色调按钮
+(QMUIButton *)primaryButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = NO;
    result.adjustsButtonWhenHighlighted = YES;
    result.titleLabel.font = UIFontMake(TEXT_LARGE);
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = BUTTON_MEDDLE;
    result.backgroundColor = [UIColor colorPrimary];
    result.layer.cornerRadius = SMALL_RADIUS;
    result.tintColor = [UIColor colorLightWhite];
    [result setTitleColor:[UIColor colorLightWhite] forState:UIControlStateNormal];
    return result;
}
/// 主色调半圆角按钮
+(QMUIButton *)primaryHalfFilletButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = BUTTON_MEDDLE_RADIUS;
    return result;
}

/// 创建只有标题按钮（类似网页连接）
+(QMUIButton *)linkButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = NO;
    result.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    
    return result;
}

/// 小圆角空心按钮
+ (QMUIButton *)primaryOutlineButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = SMALL_RADIUS;
    
    result.tintColor = [UIColor black130];
    //设置边框
    result.layer.borderWidth = 1;
    result.layer.borderColor = [[UIColor black130] CGColor];
    result.backgroundColor = [UIColor clearColor];
    [result setTitleColor:[UIColor colorPrimary] forState:UIControlStateNormal];
    
    return result;
}
@end
