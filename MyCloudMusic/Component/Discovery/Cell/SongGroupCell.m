//
//  SongGroupCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "SongGroupCell.h"
#import "DiscoverySongCell.h"

//发现界面每个单曲cell高度，51：图片高度，10*2：上下两个边距
static float const HEIGHT_DISCOVERY_SONG = 51+10*2;

@interface SongGroupCell ()<QMUITableViewDelegate,QMUITableViewDataSource>

@end

@implementation SongGroupCell

- (void)initViews{
    [super initViews];
    //标题
    [self.container addSubview:self.titleView];
    //分割线
    [self.container addSubview:[ViewFactoryUtil smallDivider]];
    //滚动容器
    _tableView = [ViewFactoryUtil tableView];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    //分割线颜色
    _tableView.separatorColor = [UIColor colorDivider];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.container addSubview:_tableView];
    
    //注册cell
    [_tableView registerClass:[DiscoverySongCell class] forCellReuseIdentifier:DiscoverySongCellName];
}
- (void)initDatum{
    [super initDatum];
    self.datum = [NSMutableArray array];
}
- (void)bind:(SongData *)data{
    //高度等于，行数*行高
    float viewHeight=data.datum.count*HEIGHT_DISCOVERY_SONG;
    
    self.tableView.myHeight = viewHeight;
    
    [self.datum removeAllObjects];
    [self.datum addObjectsFromArray:data.datum];
    [self.tableView reloadData];
}

- (MyOrientation)getContainerOrientation{
   return MyOrientation_Vert;
}

- (ItemTitleView *)titleView{
    if (!_titleView) {
        _titleView = [ItemTitleView new];
        _titleView.myWidth = MyLayoutSize.fill;
        _titleView.myHeight = MyLayoutSize.wrap;
        
        //设置标题，将标题放到每个具体的item上，好处是方便整体排序
        _titleView.titleView.text = R.string.localizable.recommendSheet;
    }
    return _titleView;
}
#pragma mark - CollectionView数据源

/// 有多少个
/// @param tableView <#tableView description#>
/// @param section <#section description#>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datum.count;
}

/// 返回cell
/// @param tableView <#tableView description#>
/// @param indexPath <#indexPath description#>
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Song *data = self.datum[indexPath.row];
    
    DiscoverySongCell *cell = [tableView dequeueReusableCellWithIdentifier:DiscoverySongCellName forIndexPath:indexPath];
    
    [cell bind:data position:indexPath.row];
    
    return cell;
}
@end
