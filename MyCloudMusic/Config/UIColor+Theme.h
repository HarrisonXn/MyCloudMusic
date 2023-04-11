//
//  UIColor+Theme.h
//  MyCloudMusic
//  主题，实现适配深色功能
//  适配思路：使用系统提供的动态颜色，iOS13才支持，低版本就不适配了，如果低版本也要支持可以用第三方框架
//  按照Android中的颜色系统命名方式（名称可以自定义，只是我们觉得Android中这种命名方式很好，所以这里借鉴），定义很多名称的颜色，然后在iOS 13及以上根据浅色，深色返回不同的颜色，以下返回浅色
//
// iOS中也提供了命名颜色，例如：.systemBackground，但无法更改他的颜色，Android中就可以根据浅色，深色修改命名的颜色，更方便
//
//  Created by 邢世航 on 2023/4/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Theme)
/// 主色调
+(UIColor *)colorPrimary;

/// 背景色，白天：灰色，夜间：深黑
+(UIColor *)colorBackground;

/// 亮背景色白天：白色，夜间：深黑
+(UIColor *)colorBackgroundLight;

/// 背景色上面内容颜色
+(UIColor *)colorOnBackground;

/// 背景色上面内容背景颜色，例如card背景，会话界面item背景，其他的例如LinearLayout这样的控件，需要手动指定使用该属性
+(UIColor *)colorSurface;

/// colorSurface点击颜色
+(UIColor *)colorSurfaceClick;

/// colorSurface上面的主内容颜色，例如：card上面主要内容颜色，会话界面item上面标题颜色
+(UIColor *)colorOnSurface;


/// 分割线颜色
+(UIColor *)colorDivider;

+ (UIColor *)colorDivider2;

/// 侧滑背景
+(UIColor *)colorSlideBackground;

/// 亮白色，白色：纯白，夜间：暗一点白色
+(UIColor *)colorLightWhite;

/// 亮色按钮
+(UIColor *)secondButtonLight;

/// 文本消息左侧背景
+(UIColor *)leftChatBackground;

/// 文本消息右侧背景
+(UIColor *)rightChatBackground;
@end

NS_ASSUME_NONNULL_END
