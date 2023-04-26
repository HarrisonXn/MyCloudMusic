//
//  SongGroupCell.h
//  MyCloudMusic
//  发现界面单曲组
//  Created by 邢世航 on 2023/4/25.
//

#import "BaseTableViewCell.h"
#import "ItemTitleView.h"
#import "SongData.h"

NS_ASSUME_NONNULL_BEGIN

static NSString * const SongGroupCellName = @"SongGroupCellName";

@interface SongGroupCell : BaseTableViewCell
/// 标题控件
@property(nonatomic,strong) ItemTitleView *titleView;

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datum;

-(void)bind:(SongData *)data;
@end

NS_ASSUME_NONNULL_END
