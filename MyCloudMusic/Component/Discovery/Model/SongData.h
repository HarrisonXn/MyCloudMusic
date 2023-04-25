//
//  SongData.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface SongData : SuperBase
/// 列表
/// 类型为：Song
@property (nonatomic, strong) NSArray *datum;
@end

NS_ASSUME_NONNULL_END
