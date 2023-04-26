//
//  DiscoveryButtonCell.h
//  MyCloudMusic
//  发现界面，快捷按钮
//  Created by 邢世航 on 2023/4/23.
//

#import "BaseTableViewCell.h"
#import "ButtonData.h"

NS_ASSUME_NONNULL_BEGIN

static NSString * const DiscoveryButtonCellName = @"DiscoveryButtonCellName";

@interface DiscoveryButtonCell : BaseTableViewCell
/// 也可以通过水平CollectionView实现
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) MyBaseLayout *contentContainer;

- (void)bind:(ButtonData *)data;
@end

NS_ASSUME_NONNULL_END
