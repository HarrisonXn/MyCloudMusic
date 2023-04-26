//
//  SuperToolbarView.h
//  MyCloudMusic
//  使用View自定义标题栏
//  Created by 邢世航 on 2023/4/25.
//

#import "MyRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperToolbarView : MyRelativeLayout
/// 左侧容器
@property (nonatomic, strong) MyLinearLayout *leftContainer;

/// 中间容器
@property (nonatomic, strong) MyLinearLayout *centerContainer;

/// 右侧容器
@property (nonatomic, strong) MyLinearLayout *rightContainer;

/// 标题
@property (nonatomic, strong) UILabel *titleView;

/// 添加左侧菜单
/// - Parameter data: <#data description#>
/// - Returns: <#description#>
-(SuperToolbarView *)addLeftItem:(UIView *)data;


/// 中间容器添加控件
-(void)addCenterView:(UIView *)data;

/// 添加右侧菜单
/// - Parameter data: <#data description#>
/// - Returns: <#description#>
-(SuperToolbarView *)addRightItem:(UIView *)data;
@end

NS_ASSUME_NONNULL_END
