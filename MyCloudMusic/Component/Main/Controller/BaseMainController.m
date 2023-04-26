//
//  BaseMainController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/26.
//

#import "BaseMainController.h"

@interface BaseMainController ()

@end

@implementation BaseMainController

- (void)initViews{
    [super initViews];
    [self setBackgroundColor:[UIColor colorBackgroundLight]];
    
    //设置左侧按钮
    [self addLeftImageButton:[R.image.menu withTintColor]];
    
    //设置右侧按钮
    [self addRightImageButton:[R.image.mic withTintColor]];
    
    //搜索按钮
    _searchButton = [[QMUIButton alloc] init];
    _searchButton.myWidth = SCREEN_WIDTH-50*2;
    _searchButton.myHeight = 35;
    _searchButton.adjustsTitleTintColorAutomatically = YES;
    _searchButton.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    _searchButton.tintColor =[UIColor black80];
    _searchButton.layer.cornerRadius = 17.5;
    [_searchButton setTitle:R.string.localizable.hintSearchValue forState:UIControlStateNormal];
    [_searchButton setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    _searchButton.backgroundColor = [UIColor colorDivider];
    [_searchButton setImage:[R.image.search withTintColor] forState:UIControlStateNormal];
    [_searchButton setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 5)];
    _searchButton.imagePosition = QMUIButtonImagePositionLeft;
    [_searchButton addTarget:self action:@selector(onSearchClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.toolbarView addCenterView:_searchButton];
}

- (void)onLeftClick:(QMUIButton *)sender{
    NSLog(@"BaseMainController onLeftClick");
}

- (void)onRightClick:(QMUIButton *)sender{
    NSLog(@"BaseMainController onRightClick");
}

-(void)onSearchClick:(QMUIButton *)sender{
    NSLog(@"BaseMainController onSearchClick");
}

@end
