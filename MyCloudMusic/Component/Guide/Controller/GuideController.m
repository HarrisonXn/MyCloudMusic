//
//  GuideController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/12.
//

#import "GuideController.h"

@interface GuideController ()

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

- (void)onPrimaryClick:(QMUIButton *)sender{
}

- (void)onEnterClick:(QMUIButton *)sender{
}

@end
