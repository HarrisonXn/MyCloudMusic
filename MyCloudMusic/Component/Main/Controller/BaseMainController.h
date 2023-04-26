//
//  BaseMainController.h
//  MyCloudMusic
//  首页，几个控制器父类，主要是处理顶部导航栏
//  Created by 邢世航 on 2023/4/26.
//

#import "BaseTitleController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseMainController : BaseTitleController
/// 搜索按钮
@property(nonatomic, strong) QMUIButton *searchButton;

/// 搜索按钮点击
/// @param sender <#sender description#>
-(void)onSearchClick:(QMUIButton *)sender;

@end

NS_ASSUME_NONNULL_END
