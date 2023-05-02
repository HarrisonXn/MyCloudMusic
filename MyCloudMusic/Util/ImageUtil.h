//
//  ImageUtil.h
//  MyCloudMusic
//  图片相关工具类
//  Created by 邢世航 on 2023/4/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageUtil : NSObject
/// 显示图片
/// @param view <#view description#>
/// @param uri <#uri description#>
+ (void)show:(UIImageView *)view uri:(NSString *)uri;

/// 显示绝对路径图片
/// @param view <#view description#>
/// @param uri <#uri description#>
+(void)showFull:(UIImageView *)view uri:(NSString *)uri;

/// 显示头像
/// @param view <#view description#>
/// @param uri <#uri description#>
+(void)showAvatar:(UIImageView *)view uri:(NSString *)uri;

@end


NS_ASSUME_NONNULL_END
