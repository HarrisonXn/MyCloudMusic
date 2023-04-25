//
//  DefaultRepository.h
//  MyCloudMusic
//  本项目默认仓库
//  主要是从网络，数据库获取数据
//  目前项目中大部分操作都在这里
//  如果项目每个模块之间有明显的区别，例如：有商城，有歌单，那可以放到对应模块的Repository
//  Created by 邢世航 on 2023/4/13.
//

#import <Foundation/Foundation.h>

#import "SuperHttpUtil.h"
#import "Video.h"
#import "Ad.h"
#import "Sheet.h"
#import "Song.h"

NS_ASSUME_NONNULL_BEGIN

@interface DefaultRepository : NSObject

/// 获取单例对象
+(instancetype)shared;

#pragma mark - 视频

/// 视频列表
-(void)videos:(int)page success:(SuperHttpListSuccess)success;

/// 视频详情
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success;

/// 视频详情，可以手动处理错误
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success  failure:(_Nullable SuperHttpFail)failure;

#pragma mark - 广告

/// 广告列表
/// @param position 那个位置广告；0：首页banner，10：启动界面
-(void)adsWithPosition:(int)position controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success;

/// 首页banner界面广告
-(void)bannerAdWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success;

#pragma mark - 歌单
/// 歌单列表
-(void)sheets:(int)size controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success;
#pragma mark - 单曲
-(void)songsWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success;

@end

NS_ASSUME_NONNULL_END
