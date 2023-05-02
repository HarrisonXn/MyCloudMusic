//
//  PreferenceUtil.h
//  MyCloudMusic
//  配置文件工具类
//  使用系统MMKV实现
//  Created by 邢世航 on 2023/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PreferenceUtil : NSObject
#pragma mark - 用户

/// 设置用户Id
/// @param data <#data description#>
+(void)setUserId:(NSString *)data;

/// 获取用户Id
+(NSString *)getUserId;

/// 设置用户session
/// @param data <#data description#>
+(void)setSession:(NSString *)data;

/// 获取用户session
+(NSString *)getSession;

/// 设置聊天session
/// @param data <#data description#>
+(void)setChatSession:(NSString *)data;

/// 获取聊天session
+(NSString *)getChatSession;

/// 是否登录了
+(BOOL)isLogin;

/// 退出
+(void)logout;
@end

NS_ASSUME_NONNULL_END
