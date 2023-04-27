//
//  SuperSettingView.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/27.
//

#import "MyLinearLayout.h"

NS_ASSUME_NONNULL_BEGIN
///view点击block
typedef void(^ViewClick)(UIView *view);

@interface SuperSettingView : MyLinearLayout
/// 图标
@property(nonatomic, strong) UIImageView *iconView;

/// 标题
@property(nonatomic, strong) UILabel *titleView;

/// 更多文本
@property(nonatomic, strong) UILabel *moreView;

/// 开关
@property(nonatomic, strong) UISwitch *superSwitch;

/// 更多图标
@property(nonatomic, strong) UIImageView *moreIconView;

/// 点击回调
@property(nonatomic, strong) ViewClick click;

#pragma mark - 创建方法

/// 创建有图标，标题，详情文本，更多图标item
/// @param icon <#icon description#>
/// @param title <#title description#>
+(instancetype)smallWithIcon:(UIImage *)icon title:(NSString *)title click:(ViewClick)click;
@end

NS_ASSUME_NONNULL_END
