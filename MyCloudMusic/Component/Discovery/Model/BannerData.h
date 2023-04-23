//
//  BannerData.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/16.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface BannerData : SuperBase
/// 轮播图列表，类型为Ad
@property (nonatomic, strong) NSArray *data;
@end

NS_ASSUME_NONNULL_END
