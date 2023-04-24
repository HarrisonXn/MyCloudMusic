//
//  SheetGroupCell.h
//  MyCloudMusic
//  发现界面歌单组
//  Created by 邢世航 on 2023/4/24.
//

#import "BaseTableViewCell.h"
#import "SheetData.h"
#import "ItemTitleView.h"


NS_ASSUME_NONNULL_BEGIN

static NSString * const SheetGroupCellName = @"SheetGroupCellName";

@interface SheetGroupCell : BaseTableViewCell

/// 标题控件
@property(nonatomic,strong) ItemTitleView *titleView;

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *datum;

-(void)bind:(SheetData *)data;
@end

NS_ASSUME_NONNULL_END
