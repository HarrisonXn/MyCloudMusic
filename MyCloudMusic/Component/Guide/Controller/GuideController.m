//
//  GuideController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/12.
//

#import "GuideController.h"
//轮播图
#import <GKCycleScrollView/GKCycleScrollView.h>
#import <GKCycleScrollView/GKPageControl.h>

@interface GuideController ()<GKCycleScrollViewDataSource,GKCycleScrollViewDelegate>
@property (nonatomic, strong) GKCycleScrollView *contentScrollView;
@end

@implementation GuideController

- (void)initViews{
    [super initViews];
    
    // 初始化垂直方向LinearLayout容器，四边都在安全区内
    [self initLinearLayoutSafeArea];
    
    //轮播图器容器（采用相对布局
    MyRelativeLayout *bannerContainer = [MyRelativeLayout new];
    bannerContainer.myWidth = MyLayoutSize.fill;
    bannerContainer.myHeight = MyLayoutSize.wrap;
    bannerContainer.weight=1;
    [self.container addSubview:bannerContainer];
    
    _contentScrollView = [[GKCycleScrollView alloc]init];
    _contentScrollView.backgroundColor = [UIColor clearColor];
    _contentScrollView.delegate = self;
    _contentScrollView.dataSource = self;
    _contentScrollView.myHeight = MyLayoutSize.fill;
    _contentScrollView.myWidth = MyLayoutSize.fill;
    
    //禁用自动滚动
    _contentScrollView.isAutoScroll=NO;
   
    //不改变透明度
    _contentScrollView.isChangeAlpha=NO;
       
    _contentScrollView.clipsToBounds = YES;
    [bannerContainer addSubview:_contentScrollView];
    
    //指示器
    GKPageControl *pageControl = [[GKPageControl alloc] init];
    pageControl.userInteractionEnabled = NO;
    pageControl.style = GKPageControlStyleCycle;
    _contentScrollView.pageControl = pageControl;
    
    //默认颜色
    pageControl.pageIndicatorTintColor = [UIColor black80];
    
    //高亮颜色
    pageControl.currentPageIndicatorTintColor = [UIColor colorPrimary];
    pageControl.myWidth = MyLayoutSize.fill;
    pageControl.myHeight = 15;
    pageControl.myBottom=40;
    [bannerContainer addSubview:pageControl];

    //按钮容器（采用线性布局
    MyLinearLayout *controlContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
    controlContainer.myWidth = MyLayoutSize.fill;
    controlContainer.myHeight = MyLayoutSize.wrap;
    controlContainer.myBottom = PADDING_LARGE;
    //水平拉升，左，中，右间距一样
    controlContainer.gravity = MyGravity_Horz_Among;
    [self.container addSubview:controlContainer];
    
    //登录注册按钮
    QMUIButton *primaryButton = [ViewFactoryUtil primaryButton];
    [primaryButton setTitle:R.string.localizable.loginOrRegister forState:UIControlStateNormal];
    [primaryButton addTarget:self action:@selector(onPrimaryClick:) forControlEvents:UIControlEventTouchUpInside];
    primaryButton.myWidth=BUTTON_WIDTH_MEDDLE;
    [controlContainer addSubview:primaryButton];
    
    //立即体验按钮
    QMUIButton *enterButton = [ViewFactoryUtil primaryOutlineButton];
    [enterButton setTitle:R.string.localizable.experienceNow forState:UIControlStateNormal];
    [enterButton addTarget:self action:@selector(onEnterClick:) forControlEvents:UIControlEventTouchUpInside];
    enterButton.myWidth=BUTTON_WIDTH_MEDDLE;
    [controlContainer addSubview:enterButton];
}
- (void)initDatum{
    [super initDatum];
    
    self.datum = [NSMutableArray new];
    [self.datum addObject:R.image.guide1];
    [self.datum addObject:R.image.guide2];
    [self.datum addObject:R.image.guide3];
    [self.datum addObject:R.image.guide4];
    [self.datum addObject:R.image.guide5];
    [_contentScrollView reloadData];
}
- (void)onPrimaryClick:(QMUIButton *)sender{
}

- (void)onEnterClick:(QMUIButton *)sender{
}

#pragma mark  - 轮播图数据源

/// 有多少个
/// @param cycleScrollView <#cycleScrollView description#>
- (NSInteger)numberOfCellsInCycleScrollView:(GKCycleScrollView *)cycleScrollView{
    return self.datum.count;
}

/// 返回cell
/// @param cycleScrollView <#cycleScrollView description#>
/// @param index <#index description#>
- (GKCycleScrollViewCell *)cycleScrollView:(GKCycleScrollView *)cycleScrollView cellForViewAtIndex:(NSInteger)index {
    GKCycleScrollViewCell *cell = [cycleScrollView dequeueReusableCell];
    if (!cell) {
        cell = [GKCycleScrollViewCell new];
    }

    UIImage *data=[self.datum objectAtIndex:index];

    cell.imageView.image = data;
    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;

    return cell;
}

@end
