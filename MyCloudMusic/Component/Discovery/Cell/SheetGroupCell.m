//
//  SheetGroupCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "SheetGroupCell.h"
#import "SheetCell.h"

@interface SheetGroupCell ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
/// 显示列数
@property (nonatomic, assign) int spanCount;

/// 每个cell宽度
@property (nonatomic, assign) CGFloat cellWidth;

/// 每个cell高度
@property (nonatomic, assign) CGFloat cellHeight;
@end


@implementation SheetGroupCell

- (void)initViews{
    [super initViews];
    //标题
    [self.container addSubview:self.titleView];
    //分割线
    //分割线
    [self.container addSubview:[ViewFactoryUtil smallDivider]];
    //滚动容器
    _collectionView = [ViewFactoryUtil collectionView];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [self.container addSubview:_collectionView];
    
    //注册cell
    [_collectionView registerClass:[SheetCell class] forCellWithReuseIdentifier:SheetCellName];

}
- (MyOrientation)getContainerOrientation{
    return MyOrientation_Vert;
}

- (void)initDatum{
    [super initDatum];
    self.spanCount=3;
    self.datum = [NSMutableArray array];
}

-(void)bind:(SheetData *)data{
    //计算每个cell宽度
        
    //屏幕宽度-外边距16*2-(self.spanCount-1)*5
    _cellWidth = (SCREEN_WIDTH-PADDING_OUTER*2-(self.spanCount-1)*5) / self.spanCount;
    
    //cell高度，5:图片和标题边距，40：2行文字高度
    _cellHeight=_cellWidth+5+40;
    
    //计算可以显示几行
    int rows=ceil([data.datum count]*1.0/self.spanCount);
    
    //CollectionView高度等于，行数*行高，10：垂直方向每个cell间距
    float viewHeight=rows*(_cellHeight+PADDING_MEDDLE);
    
    self.collectionView.myHeight = viewHeight;
    
    [self.datum removeAllObjects];
    [self.datum addObjectsFromArray:data.datum];
    [self.collectionView reloadData];
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
/// @param collectionView <#collectionView description#>
/// @param section <#section description#>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.datum.count;
}

/// 返回cell
/// @param collectionView <#collectionView description#>
/// @param indexPath <#indexPath description#>
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Sheet *data = self.datum[indexPath.row];
    
    SheetCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SheetCellName forIndexPath:indexPath];
    
    [cell bind:data];
    
    return cell;
}

/// 点击了cell
/// @param collectionView <#collectionView description#>
/// @param indexPath <#indexPath description#>
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (_delegate) {
        Sheet *data=self.datum[indexPath.row];
        [_delegate sheetClick:data];
    }
}

#pragma mark - CollectionView布局代理

/// 返回CollectionView里面的Cell到CollectionView的间距
/// @param collectionView <#collectionView description#>
/// @param collectionViewLayout <#collectionViewLayout description#>
/// @param section <#section description#>
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, PADDING_OUTER, PADDING_MEDDLE, PADDING_OUTER);
}

/// 返回每个Cell的行间距
/// @param collectionView <#collectionView description#>
/// @param collectionViewLayout <#collectionViewLayout description#>
/// @param section <#section description#>
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return PADDING_MEDDLE;
}

/// 返回每个Cell的列间距
/// @param collectionView <#collectionView description#>
/// @param collectionViewLayout <#collectionViewLayout description#>
/// @param section <#section description#>
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return PADDING_SMALL;
}

/// cell尺寸
/// @param collectionView <#collectionView description#>
/// @param collectionViewLayout <#collectionViewLayout description#>
/// @param indexPath <#indexPath description#>
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(_cellWidth, _cellHeight);
}
@end
