//
//  BannerCell.h
//  MyCloudMusic
//  发现界面广告cell
//  Created by 邢世航 on 2023/4/21.
//
//轮播图
#import <GKCycleScrollView/GKCycleScrollView.h>
#import <GKCycleScrollView/GKPageControl.h>

#import "BaseTableViewCell.h"
#import "BannerData.h"

NS_ASSUME_NONNULL_BEGIN

static NSString * const BannerCellName = @"BannerCellName";

@interface BannerCell : BaseTableViewCell
///创建轮播视图和数据数组
@property (nonatomic, strong) GKCycleScrollView *contentScrollView;
@property (nonatomic, strong) NSMutableArray *datum;
@property (nonatomic, strong) NSMutableArray *imageArray;
-(void)bind:(BannerData *)data;

@end

NS_ASSUME_NONNULL_END
