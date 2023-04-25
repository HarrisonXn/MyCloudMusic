//
//  DiscoverySongCell.h
//  MyCloudMusic
//  发现界面单曲cell
//  Created by 邢世航 on 2023/4/25.
//

#import "BaseTableViewCell.h"
#import "Song.h"
NS_ASSUME_NONNULL_BEGIN

static NSString * const DiscoverySongCellName = @"DiscoverySongCellName";

@interface DiscoverySongCell : BaseTableViewCell
/// 封面
@property (nonatomic, strong) UIImageView *iconView;

/// 标题
@property (nonatomic, strong) UILabel *titleView;

/// 更多信息
@property (nonatomic, strong) UILabel *infoView;

/// 右侧容器，显示标题和歌手信息
@property (nonatomic, strong) MyLinearLayout *rightContainer;

-(void)bind:(Song *)data position:(int)position;
@end


NS_ASSUME_NONNULL_END
