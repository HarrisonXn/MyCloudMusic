//
//  PreferenceUtil.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

//腾讯开源的偏好存储框架
#import <MMKV/MMKV.h>

#import "PreferenceUtil.h"

static NSString * const LAST_PLAY_SONG_ID = @"LAST_PLAY_SONG_ID";
static NSString * const USER_ID = @"USER_ID";
static NSString * const SESSION = @"SESSION";
static NSString * const CHAT_SESSION = @"CHAT_SESSION";
static NSString * const GUIDE = @"GUIDE";
static NSString * const NICKNAME = @"NICKNAME";
static NSString * const EMAIL = @"EMAIL";
static NSString * const SPLASH_AD = @"SPLASH_AD";
static NSString * const LAST_SONG_PROGRESS = @"LAST_SONG_PROGRESS";

@implementation PreferenceUtil
#pragma mark - 用户

/// 设置用户Id
/// @param data <#data description#>
+(void)setUserId:(NSString *)data{
    [[MMKV defaultMMKV] setString:data forKey:USER_ID];
}

/// 获取用户Id
+(NSString *)getUserId{
    return [[MMKV defaultMMKV] getStringForKey:USER_ID defaultValue:ANONYMOUS];
}

/// 设置用户session
/// @param data <#data description#>
+(void)setSession:(NSString *)data{
    [[MMKV defaultMMKV] setString:data forKey:SESSION];
}

/// 获取用户session
+(NSString *)getSession{
    return [[MMKV defaultMMKV] getStringForKey:SESSION];
}

/// 设置聊天session
/// @param data <#data description#>
+(void)setChatSession:(NSString *)data{
    [[MMKV defaultMMKV] setString:data forKey:CHAT_SESSION];
}

/// 获取聊天session
+(NSString *)getChatSession{
    return [[MMKV defaultMMKV] getStringForKey:CHAT_SESSION];
}

/// 是否登录了
+(BOOL)isLogin{
    return ![ANONYMOUS isEqualToString:[self getUserId]];
}

/// 退出
+(void)logout{
    [[MMKV defaultMMKV] removeValuesForKeys:@[USER_ID,SESSION]];
}

@end
