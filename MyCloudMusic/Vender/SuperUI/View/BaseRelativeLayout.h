//
//  BaseRelativeLayout.h
//  MyCloudMusic
//  BaseRelativeLayout控件，类似BaseController
//  Created by 邢世航 on 2023/4/30.
//
#import <MyLayout/MyLayout.h>
#import "MyRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseRelativeLayout : MyRelativeLayout
/// 找控件
- (void)initViews;

/// 设置数据
- (void)initDatum;

/// 设置监听器
- (void)initListeners;
@end

NS_ASSUME_NONNULL_END
