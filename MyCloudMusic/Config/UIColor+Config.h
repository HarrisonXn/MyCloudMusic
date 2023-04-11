//
//  UIColor+Config.h
//  MyCloudMusic
//  颜色配置
//  定义颜色，主要是定义项目中的颜色，然后大部分情况用定义号的动态颜色，或者项目中直接引用
//  颜色不太好取名，例如：灰色，到底多少才是灰色，每个人，每个项目可能定义不一样
// 所以这里就不在按颜色名称取名，而是把要用到的颜色，按照黑色到白色（如果是其他颜色，例如：警告位置颜色，那可以定义为警告名称）定义出来
//  Created by 邢世航 on 2023/4/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Config)
/// 主色调
+(UIColor *)primaryColor;

/// 暗一点 主色调
+(UIColor *)primary30;

#pragma mark - 黑色到白色
//颜色命名也是很大的问题，关于颜色命名方式讨论：https://www.zhihu.com/question/301985702
//以下命名后面的数字，没有实际意思
+(UIColor *)blackTransparent88;
+(UIColor *)buttonTransparent88;
+(UIColor *)transparent88;
+(UIColor *)black11;
+(UIColor *)black15;
+(UIColor *)black17;
+(UIColor *)black20;
+(UIColor *)black25;
+(UIColor *)black30;
+(UIColor *)black31;
+(UIColor *)black311;
+(UIColor *)black312;
+(UIColor *)black32;
+(UIColor *)black33;
+(UIColor *)black322;
+(UIColor *)black40;
+(UIColor *)black42;
+(UIColor *)black43;
+(UIColor *)black45;
+(UIColor *)black66;
+(UIColor *)black70;
+(UIColor *)black80;
+(UIColor *)black90;
+(UIColor *)black130;
+(UIColor *)black140;
+(UIColor *)black150;
+(UIColor *)black160;
+(UIColor *)black165;
+(UIColor *)black170;
+(UIColor *)black180;
+(UIColor *)black183;
+(UIColor *)black190;

/// 链接颜色
+(UIColor *)link;

/// 主色调，暗一点按钮颜色
+(UIColor *)primaryButton;

/// vip金色
+(UIColor *)vipBorder;

+(UIColor *)divider2;

/// 亮灰色，例如：设置item右侧图标，右侧更多文本颜色
+(UIColor *)lightGray;

/// 错误警告颜色，主要是做敏感操作，例如：删除联系人时，确认按钮颜色
+(UIColor *)warning;

/// 优惠券文本颜色
+(UIColor *)textPrice;

/// 绿色，表示正确颜色
+(UIColor *)pass;
@end

NS_ASSUME_NONNULL_END
