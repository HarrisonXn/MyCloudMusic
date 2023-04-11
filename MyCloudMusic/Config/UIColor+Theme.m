//
//  UIColor+Theme.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/11.
//

#import "UIColor+Theme.h"
#import "UIColor+SuperUI.h"
#import "UIColor+Config.h"

@implementation UIColor (Theme)
/// 主色调
+(UIColor *)colorPrimary{
    return [UIColor withColor:[UIColor primaryColor] darkColor:[UIColor primary30]];
}

/// 背景色
+(UIColor *)colorBackground{
    return [UIColor withColor:[UIColor black183] darkColor:[UIColor black17]];
}

+(UIColor *)colorBackgroundLight{
    return [UIColor withColor:[UIColor whiteColor] darkColor:[UIColor black17]];
}

/// 背景色上面内容颜色
+(UIColor *)colorOnBackground{
    return [UIColor withColor:[UIColor black20] darkColor:[UIColor black140]];
}

/// 背景色上面内容背景颜色，例如card背景，会话界面item背景，其他的例如LinearLayout这样的控件，需要手动指定使用该属性
+(UIColor *)colorSurface{
    return [UIColor withColor:[UIColor whiteColor] darkColor:[UIColor black33]];
}

/// colorSurface点击颜色
+(UIColor *)colorSurfaceClick{
    return [UIColor withColor:[UIColor black130] darkColor:[UIColor black322]];
}

/// colorSurface上面的主内容颜色，例如：card上面主要内容颜色，会话界面item上面标题颜色
+(UIColor *)colorOnSurface{
    return [UIColor withColor:[UIColor black25] darkColor:[UIColor black165]];
}

+ (UIColor *)colorDivider{
    return [UIColor withColor:[UIColor black180] darkColor:[UIColor black33]];
}

+ (UIColor *)colorDivider2{
    return [UIColor withColor:[UIColor black170] darkColor:[UIColor black30]];
}

+(UIColor *)colorSlideBackground{
    return [UIColor withColor:[UIColor black170] darkColor:[UIColor black17]];
}

+(UIColor *)colorLightWhite{
    return [UIColor withColor:[UIColor whiteColor] darkColor:[UIColor black180]];
}

+(UIColor *)secondButtonLight{
    return [UIColor withColor:[UIColor whiteColor] darkColor:[UIColor black45]];
}

/// 文本消息左侧背景
+(UIColor *)leftChatBackground{
    return [UIColor withColor:[UIColor black170] darkColor:[UIColor black17]];
}

/// 文本消息右侧背景
+(UIColor *)rightChatBackground{
    return [UIColor withColor:[UIColor colorPrimary] darkColor:[UIColor colorPrimary]];
}


@end
