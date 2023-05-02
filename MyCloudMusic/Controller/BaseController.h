//
//  BaseController.h
//  MyCloudMusic
//  所有控制器父类
//  Created by 邢世航 on 2023/4/11.
//

#import <UIKit/UIKit.h>

#import "UIViewController+SuperUI.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseController : UIViewController
/// 找控件
- (void)initViews;

/// 设置数据
- (void)initDatum;

/// 设置监听器
- (void)initListeners;

@end

NS_ASSUME_NONNULL_END
