//
//  Video.h
//  MyCloudMusic
//  视频模型
//  Created by 邢世航 on 2023/4/13.
//

#import "SuperCommon.h"

NS_ASSUME_NONNULL_BEGIN

@interface Video : SuperCommon
/// 标题
@property(nonatomic, strong) NSString *title;

/// 视频地址
/// 和图片地址一样
/// 都是相对地址
@property(nonatomic, strong) NSString *uri;

/// 封面地址
@property(nonatomic, strong) NSString *icon;

/// 视频时长
/// 单位：秒
@property(nonatomic, assign) int duration;

/// 视频宽
@property(nonatomic, assign) int width;

/// 视频高
@property(nonatomic, assign) int height;

/// 点击数
@property(nonatomic, assign) int clicksCount;


/// 评论数
@property(nonatomic, assign) int commentsCount;
@end

NS_ASSUME_NONNULL_END
