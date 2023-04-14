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

/// 创建TableView
+(QMUITableView *)tableView;
@end

NS_ASSUME_NONNULL_END
