//
//  BaseTitleController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "BaseTitleController.h"

@interface BaseTitleController ()

@end

@implementation BaseTitleController

//创建安全区内线性布局父视图
- (void)initLinearLayoutSafeArea{
    [super initLinearLayoutSafeArea];
    //如果添加toolBar的方法为YES则创建toolBar
    if([self isAddToolBar]){
        [self initToolbar];
    }
}

//创建安全区内相对布局父视图
- (void)initRelativeLayoutSafeArea{
    [super initRelativeLayoutSafeArea];
    if ([self isAddToolBar]) {
        [self initToolbar];
    }
}

- (void)setTitle:(NSString *)title{
    self.toolbarView.titleView.text=title;
}

- (BOOL)isAddToolBar{
    return YES;
}

-(void)initToolbar{
    [self.superHeaderContentContainer addSubview:self.toolbarView];
}
#pragma mark - 创建控件
- (SuperToolbarView *)toolbarView{
    if (!_toolbarView) {
        _toolbarView = [SuperToolbarView new];
        
    }
    return _toolbarView;
}
@end
