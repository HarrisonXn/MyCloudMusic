//
//  BaseMainController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/26.
//
//侧滑菜单
#import <UIViewController+CWLateralSlide.h>

#import "BaseMainController.h"
#import "DrawerController.h"

@interface BaseMainController ()

@property(nonatomic, strong) DrawerController *drawerController;

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

- (void)initListeners{
    [super initListeners];
    // 注册导航栏手势驱动
    __weak typeof(self)weakSelf = self;
    // 第一个参数为是否开启边缘手势，开启则默认从边缘50距离内有效，第二个block为手势过程中我们希望做的操作
    [self cw_registerShowIntractiveWithEdgeGesture:NO transitionDirectionAutoBlock:^(CWDrawerTransitionDirection direction) {
        if (direction == CWDrawerTransitionFromLeft) { // 左侧滑出
            [self openDrawer];
        }
    }];
}

- (void)onLeftClick:(QMUIButton *)sender{
    [self openDrawer];
}

- (void)onRightClick:(QMUIButton *)sender{
    NSLog(@"BaseMainController onRightClick");
}

-(void)onSearchClick:(QMUIButton *)sender{
    NSLog(@"BaseMainController onSearchClick");
}

#pragma mark - 侧滑

- (void)openDrawer{
    //真实内容滑动到外面
//    [self cw_showDefaultDrawerViewController:self.drawerController];

    //侧滑显示到真实内容上面
    [self cw_showDrawerViewController:self.drawerController animationType:CWDrawerAnimationTypeMask configuration:nil];
}

- (void)closeDrawer{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/// 获取侧滑控制器
- (DrawerController *)drawerController{
    if (!_drawerController) {
        _drawerController = [DrawerController new];
    }
    return _drawerController;
}

@end
