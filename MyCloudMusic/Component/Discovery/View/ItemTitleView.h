//
//  ItemTitleView.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "MyRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface ItemTitleView : MyRelativeLayout
/// 标题控件
@property(nonatomic,strong) UILabel *titleView;

/// 更多图标
@property(nonatomic,strong) UIImageView *moreIconView;
@end

NS_ASSUME_NONNULL_END
