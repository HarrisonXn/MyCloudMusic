//
//  ButtonData.h
//  MyCloudMusic
//  发现界面，快捷按钮数据
//  Created by 邢世航 on 2023/4/24.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface ButtonData : SuperBase
/// 按钮列表
/// 类型为：IconTitleButtonData
@property (nonatomic, strong) NSMutableArray *datum;
@end

NS_ASSUME_NONNULL_END
