//
//  SheetData.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface SheetData : SuperBase
/// 列表
/// 类型为：Sheet
@property (nonatomic, strong) NSArray *datum;
@end

NS_ASSUME_NONNULL_END
