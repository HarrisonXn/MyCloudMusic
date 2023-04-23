//
//  PlaceholderView.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/14.
//

#import "MyRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlaceholderView : MyRelativeLayout
/// 图标控件
@property(nonatomic,strong) UIImageView *iconView;

/// 标题控件
@property(nonatomic,strong) UILabel *titleView;

/// 显示数据
/// @param title <#title description#>
/// @param icon <#icon description#>
-(void)showWithTitle:(NSString *)title icon:(UIImage *)icon;

@end

NS_ASSUME_NONNULL_END
