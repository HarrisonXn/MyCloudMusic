//
//  Sheet.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "SuperCommon.h"

NS_ASSUME_NONNULL_BEGIN

@interface Sheet : SuperCommon
/// 歌单标题
@property (nonatomic, strong) NSString *title;

/// 歌单封面
@property (nonatomic, strong) NSString *icon;

/// 点击数
@property (nonatomic, assign) int clicksCount;

/// 收藏数
@property (nonatomic, assign) int collectsCount;

/// 评论数
@property (nonatomic, assign) int commentsCount;

/// 音乐数量
@property (nonatomic, assign) int songsCount;
@end

NS_ASSUME_NONNULL_END
