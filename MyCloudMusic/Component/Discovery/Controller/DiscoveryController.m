//
//  DiscoveryController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/14.
//

#import "DiscoveryController.h"
#import "DiscoveryButtonCell.h"
#import "BannerCell.h"
#import "BannerData.h"
#import "BannerClickEvent.h"
#import "DiscoveryButtonCell.h"
#import "ButtonData.h"
#import "SheetData.h"
#import "SheetGroupCell.h"
#import "SongData.h"
#import "SongGroupCell.h"
//下拉刷新
#import <MJRefresh/MJRefresh.h>
@interface DiscoveryController ()<SheetGroupDelegate>

@end

@implementation DiscoveryController

- (void)initViews{
    [super initViews];
    
    [self setBackgroundColor:[UIColor colorBackgroundLight]];
    
    //初始化TableView结构
    [self initTableViewSafeArea];
    
    [self setTitle:@"发现"];
    
    //注册轮播图cell
    //也可以放到header中，这里之所以放到cell
    //是要实现列表的数据可以调整显示顺序
    [self.tableView registerClass:[BannerCell class] forCellReuseIdentifier:BannerCellName];
    
    [self.tableView registerClass:[DiscoveryButtonCell class] forCellReuseIdentifier:DiscoveryButtonCellName];
    
    [self.tableView registerClass:[SheetGroupCell class] forCellReuseIdentifier:SheetGroupCellName];
    
    [self.tableView registerClass:[SongGroupCell class] forCellReuseIdentifier:SongGroupCellName];
    
    //下拉刷新
    MJRefreshNormalHeader *header=[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self loadData];
    }];
    
    //隐藏标题
   header.stateLabel.hidden = YES;
    
    // 隐藏时间
   header.lastUpdatedTimeLabel.hidden = YES;
   self.tableView.mj_header=header;
}

-(void)endRefresh{
    [self.tableView.mj_header endRefreshing];
}

- (void)initDatum{
    [super initDatum];
    
//    [self loadData];
    [self startRefresh];
}

-(void)startRefresh{
    //进入界面后自动刷新，会调用回调方法
    [self.tableView.mj_header beginRefreshing];
}

- (void)loadData:(BOOL)isPlaceholder{
    [self.datum removeAllObjects];

    //添加轮播图
    NSMutableArray *bannerName = [NSMutableArray new];
    BannerData *bannerData=[BannerData new];
    [bannerName addObject:@"banner_1"];
    [bannerName addObject:@"banner_2"];
    [bannerName addObject:@"banner_3"];
    [bannerName addObject:@"banner_4"];
    [bannerName addObject:@"banner_5"];
    bannerData.data = bannerName;
    [self.datum addObject:bannerData];
    
    //添加快捷按钮数据
    [self.datum addObject:[ButtonData new]];
    
    //请求歌单数据
    [self loadSheetData];
}

/// 请求歌单数据
-(void)loadSheetData{
    [[DefaultRepository shared] sheets:SIZE12 controller:self success:^(BaseResponse * _Nonnull baseResponse, Meta * _Nonnull meta, NSArray * _Nonnull data) {
        
        //添加歌单数据
        SheetData *sheetData=[SheetData new];
        sheetData.datum = data;
        [self.datum addObject:sheetData];
        
        //请求单曲数据
        [self loadSongData];
    }];
}

-(void)loadSongData{
    [[DefaultRepository shared] songsWithController:self success:^(BaseResponse * _Nonnull baseResponse, Meta * _Nonnull meta, NSArray * _Nonnull data) {
        
        [self endRefresh];
        //添加单曲数据
        SongData *result=[SongData new];
        result.datum = data;
        [self.datum addObject:result];
        
        [self.tableView reloadData];
    }];
}

- (void)initListeners{
    [super initListeners];
    @weakify(self);
    
    //订阅banner点击事件
    [QTSubMain(self, BannerClickEvent) next:^(BannerClickEvent *event) {
        @strongify(self);
        [self processAdClick:event.data];
    }];
}

- (void)processAdClick:(Ad *)data{
    NSLog(@"processAdClick %@",data);
}

#pragma mark - 列表数据源
/// 返回当前位置的cell
/// 相当于Android中RecyclerView Adapter的onCreateViewHolder
/// @param tableView <#tableView description#>
/// @param indexPath <#indexPath description#>
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSObject *data= self.datum[indexPath.row];
    
    //获取类型
    ListStyle style=[self typeForItemAtIndexPath:indexPath];
    
    switch (style) {
        case StyleBanner:{
            //轮播图
            BannerCell *cell = [tableView dequeueReusableCellWithIdentifier:BannerCellName forIndexPath:indexPath];
            
            //绑定数据
            [cell bind:data];
            
            return cell;
        }
            
        case StyleButton:{
            //按钮
            DiscoveryButtonCell *cell = [tableView dequeueReusableCellWithIdentifier:DiscoveryButtonCellName forIndexPath:indexPath];
            
            [cell bind:data];
            
            return cell;
        }case StyleSheet:{
            //歌单组
            SheetGroupCell *cell = [tableView dequeueReusableCellWithIdentifier:SheetGroupCellName forIndexPath:indexPath];
            //设置代理
            cell.delegate = self;
            
            [cell bind:data];
            
            return cell;
        }case StyleSong:{
            //单曲组
            SongGroupCell *cell = [tableView dequeueReusableCellWithIdentifier:SongGroupCellName forIndexPath:indexPath];
            
            [cell bind:data];
            
            return cell;
        }

        default:
            return nil;
    }
}

/// Cell类型
/// @param indexPath <#indexPath description#>
- (ListStyle)typeForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSObject *data= self.datum[indexPath.row];
    
    if([data isKindOfClass:[BannerData class]]){
        //banner
        return StyleBanner;
    }else if ([data isKindOfClass:[ButtonData class]]){
        //按钮
        return StyleButton;
    }
    else if ([data isKindOfClass:[SheetData class]]){
        //歌单
        return StyleSheet;
    }
        else if ([data isKindOfClass:[SongData class]]){
            //单曲
            return StyleSong;
        }
    
    //TODO 更多的类型，在这里扩展就行了
    //尾部类型
    return StyleFooter;
}

#pragma mark - 歌单组代理
- (void)sheetClick:(Sheet *)data{
    NSLog(@"sheetClick %@",data.title);
}
@end
