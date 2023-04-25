//
//  SuperToolbarView.h
//  MyCloudMusic
//  使用View自定义标题栏
//  Created by 邢世航 on 2023/4/25.
//

#import "MyRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperToolbarView : MyRelativeLayout
/// 中间容器
@property (nonatomic, strong) MyLinearLayout *centerContainer;

/// 标题
@property (nonatomic, strong) UILabel *titleView;
@end

NS_ASSUME_NONNULL_END
