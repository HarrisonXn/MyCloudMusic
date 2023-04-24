//
//  DiscoveryButtonCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/23.
//

#import "DiscoveryButtonCell.h"
#import "DiscoveryButtonView.h"
#import "IconTitleButtonData.h"

@implementation DiscoveryButtonCell

- (void)initViews{
    [super initViews];
    
    //滚动容器
    _scrollView = [UIScrollView new];
    _scrollView.contentInset = UIEdgeInsetsMake(0, 13, 0, 13);
    [_scrollView setShowsVerticalScrollIndicator:NO];
    [_scrollView setShowsHorizontalScrollIndicator:NO];
    _scrollView.myWidth = MyLayoutSize.fill;
    _scrollView.myHeight = 100;
    [self.container addSubview:_scrollView];
    
    //真实内容容器
    self.contentContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Horz];
    self.contentContainer.gravity = MyGravity_Vert_Center;
    self.contentContainer.myHeight = 100;
    [_scrollView addSubview:self.contentContainer];
}

- (void)bind:(ButtonData *)data{
    if ([[self.contentContainer subviews] count]>0) {
        //已经添加了
        return;
    }
    
    //横向显示5个半
    CGFloat containerWidth = (SCREEN_WIDTH-10*2) / 5.5;
    
    for (IconTitleButtonData *it in data.datum) {
        DiscoveryButtonView *buttonView=[DiscoveryButtonView new];
        buttonView.myWidth=containerWidth;
        [buttonView showWithTitle:it.title icon:it.icon];
        
        if (it.title==R.string.localizable.dayRecommend) {
           //显示日期
            buttonView.tipView.text=[NSString stringWithFormat:@"%ld",[SuperDateUtil currentDay]];
        }
        
        //设置点击事件
        
        [self.contentContainer addSubview:buttonView];
    }
}

@end
