//
//  ViewFactoryUtil.h
//  MyCloudMusic
//  主要用来创建常见View，方便在多个位置使用
//  Created by 邢世航 on 2023/4/11.
//

#import <Foundation/Foundation.h>
//腾讯开源的UI框架，提供了很多功能，例如：圆角按钮，空心按钮，TextView支持placeholder
#import <QMUIKit/QMUIKit.h>

//提供类似Android中更高层级的布局框架
#import <MyLayout/MyLayout.h>

#import <Foundation/Foundation.h>

#import "UIColor+Config.h"
#import "UIColor+Theme.h"
#import "Constant.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewFactoryUtil : NSObject
/// 小圆角，主色调按钮
+(QMUIButton *)primaryButton;

/// 主色调半圆角按钮
+(QMUIButton *)primaryHalfFilletButton;

/// 创建只有标题按钮（类似网页连接）
+(QMUIButton *)linkButton;

/// 小圆角空心按钮
+ (QMUIButton *)primaryOutlineButton;

/// 创建次要，半圆角，小按钮
+(QMUIButton *)secondHalfFilletSmallButton;

/// 创建图片按钮
+(QMUIButton *)buttonWithImage:(UIImage *)data;

/// 创建图片按钮，单独设置高亮图片
/// @param data <#data description#>
/// @param selectedImage <#selectedImage description#>
+(QMUIButton *)buttonWithImage:(UIImage *)data selectedImage:(UIImage *)selectedImage;

/// 半圆角空心按钮
+ (QMUIButton *)primaryHalfFilletOutlineButton;

+(QMUIButton *)title:(NSString *)title color:(UIColor *)color;

+(QMUIButton *)primarySmallHalfFilletButton;

/// 次要，左侧图片，右侧文本按钮
/// @param image <#image description#>
/// @param title <#title description#>
+(QMUIButton *)secoundButtonWithImage:(UIImage *)image title:(NSString *)title;

+(QMUIButton *)title:(NSString *)title color:(UIColor *)color;

/// 垂直图标，标题按钮
/// @param image <#image description#>
/// @param title <#title description#>
+(QMUIButton *)verticalButtonWithImage:(UIImage *)image title:(NSString *)title;

/// 创建圆形图片按钮
+(QMUIButton *)circleButtonWithImage:(UIImage *)data;

+(QMUIButton *)title:(NSString *)title color:(UIColor *)color;

/// 创建更多 图片控件
+(UIImageView *)moreIconView;

/// 创建TableView
+(QMUITableView *)tableView;

/// 创建CollectionView
+(UICollectionView *)collectionView;
+(UICollectionViewFlowLayout *)collectionViewFlowLayout;

/// 水平page CollectionView
+(UICollectionView *)pageCollectionView;
+(UICollectionViewFlowLayout *)pageCollectionViewFlowLayout;

/// 创建小水平分割线
+(UIView *)smallDivider;

/// 创建小垂直分割线
+(UIView *)smallVerticalDivider;

/// 创建水平分割线
+(UIView *)divider;

/// 水平容器
+(MyLinearLayout *)orientationContainer;
@end

NS_ASSUME_NONNULL_END
