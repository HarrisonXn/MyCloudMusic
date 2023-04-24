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

@interface DiscoveryController ()

@end

@implementation DiscoveryController

- (void)initViews{
    [super initViews];
    
    //初始化TableView结构
    [self initTableViewSafeArea];
    
    //注册轮播图cell
    //也可以放到header中，这里之所以放到cell
    //是要实现列表的数据可以调整显示顺序
    [self.tableView registerClass:[BannerCell class] forCellReuseIdentifier:BannerCellName];
    
    [self.tableView registerClass:[DiscoveryButtonCell class] forCellReuseIdentifier:DiscoveryButtonCellName];
    
}

- (void)initDatum{
    [super initDatum];
    
    [self loadData];
}

- (void)loadData:(BOOL)isPlaceholder{
    [self.datum removeAllObjects];
    
//    //广告API
//    [[DefaultRepository shared] bannerAdWithController:self success:^(BaseResponse * _Nonnull baseResponse, Meta * _Nonnull meta, NSArray * _Nonnull data) {
   
//    }];
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
    [self.tableView reloadData];
    
    //添加快捷按钮
    //添加快捷按钮
    [self.datum addObject:[ButtonData new]];
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
    //    else if ([data isKindOfClass:[SheetData class]]){
    //        //歌单
    //        return StyleSheet;
    //    }
    //    else if ([data isKindOfClass:[SongData class]]){
    //        //单曲
    //        return StyleSong;
    //    }
    //
    //TODO 更多的类型，在这里扩展就行了
    //尾部类型
    return StyleFooter;
}
@end
