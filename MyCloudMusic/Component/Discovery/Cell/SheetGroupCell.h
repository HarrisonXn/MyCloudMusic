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

@protocol SheetGroupDelegate<NSObject>

/// 歌单点击回调
/// @param data 点击的歌单对象
- (void)sheetClick:(Sheet *)data;

@optional

/// 这是一个可选方法，在这里没有任何作用，只是写出可选语法
- (void)testOptionalMethod;
@end

static NSString * const SheetGroupCellName = @"SheetGroupCellName";

@interface SheetGroupCell : BaseTableViewCell

/// 代理对象，目的是将歌单点击回调到外界，可以用EventBus，也可以用block
@property (nonatomic, weak, nullable) id<SheetGroupDelegate> delegate;
/// 标题控件
@property(nonatomic,strong) ItemTitleView *titleView;

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *datum;

-(void)bind:(SheetData *)data;
@end

NS_ASSUME_NONNULL_END
