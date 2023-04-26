//
//  SuperBaseId.h
//  MyCloudMusic
//  所有模型Id父类
//  Created by 邢世航 on 2023/4/13.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperBaseId : SuperBase
/// id字段
@property (nonatomic, strong) NSString *id;
@end

NS_ASSUME_NONNULL_END
