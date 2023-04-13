//
//  SuperCommon.h
//  MyCloudMusic
//  所有通用模型父类，例如：创建时间，更新时间字段
//  Created by 邢世航 on 2023/4/13.
//

#import "SuperBaseId.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperCommon : SuperBaseId
/// 创建时间
@property (nonatomic, strong) NSString *createdAt;

/// 更新时间
@property (nonatomic, strong) NSString *updatedAt;

@property (nonatomic, strong) NSString *detail;
@end

NS_ASSUME_NONNULL_END
