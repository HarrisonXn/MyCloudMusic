//
//  Song.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "SuperCommon.h"
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface Song : SuperCommon
/// 标题
@property (nonatomic, strong) NSString *title;

/// 封面
@property (nonatomic, strong) NSString *icon;

/// 音乐地址
@property (nonatomic, strong) NSString *uri;

/// 点击数
@property (nonatomic, assign) int clicksCount;

/// 评论数
@property (nonatomic, assign) int commentsCount;

/// 歌词类型
@property (nonatomic, assign) int style;

/// 创建该音乐的人
@property (nonatomic, strong) User *user;

/// 歌手
@property (nonatomic, strong) User *singer;
@end

NS_ASSUME_NONNULL_END
