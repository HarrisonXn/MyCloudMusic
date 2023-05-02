//
//  ImageUtil.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

//图片加载框架
#import <SDWebImage/UIImageView+WebCache.h>

#import "ImageUtil.h"

@implementation ImageUtil
/// 显示相对路径图片
/// @param view <#view description#>
/// @param uri <#uri description#>
+ (void)show:(UIImageView *)view uri:(NSString *)uri{
    if ([StringUtil isBlank:uri]) {
        //显示默认图标
        view.image = R.image.placeholder;
        return;
    }
    
    //将图片地址转为绝对路径
    uri = [ResourceUtil resourceUri:uri];

    [self showFull:view uri:uri];
}

/// 显示绝对路径图片
/// @param view <#view description#>
/// @param uri <#uri description#>
+(void)showFull:(UIImageView *)view uri:(NSString *)uri{
    [view sd_setImageWithURL:[NSURL URLWithString:uri] placeholderImage:R.image.placeholder];
}

+ (void)showAvatar:(UIImageView *)view uri:(NSString *)uri{
    if ([StringUtil isBlank:uri]) {
        //显示默认图标
        view.image = R.image.defaultAvatar;
        return;
    }
    if ([uri hasPrefix:@"http"]) {
        //绝对路径
        [self showFull:view uri:uri];
    } else {
        //相对路径
        [self show:view uri:uri];
    }
}

@end
