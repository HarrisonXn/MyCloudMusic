//
//  SuperDialogController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "SuperDialogController.h"

@interface SuperDialogController ()

@end

@implementation SuperDialogController

- (void)initViews{
    [super initViews];
    
    self.view.backgroundColor = [UIColor colorDivider];
    self.view.myWidth = MyLayoutSize.fill;
    self.view.myHeight = MyLayoutSize.wrap;
    [self.view smallRadius];
    
    //根容器
    self.superRootContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superRootContainer.subviewSpace = 0.5;
    self.superRootContainer.myWidth = MyLayoutSize.fill;
    self.superRootContainer.myHeight = MyLayoutSize.wrap;
    [self.view addSubview:self.superRootContainer];

    //内容容器
    self.superContentContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superContentContainer.subviewSpace = 25;
    self.superContentContainer.myWidth = MyLayoutSize.fill;
    self.superContentContainer.myHeight = MyLayoutSize.wrap;
    self.superContentContainer.backgroundColor = [UIColor colorBackground];
    self.superContentContainer.padding = UIEdgeInsetsMake(30, PADDING_OUTER, 30, PADDING_OUTER);
    [self.superRootContainer addSubview:self.superContentContainer];
    
    //标题
    [self.superContentContainer addSubview:self.titleView];
    
    //底部容器
    self.superFooterContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
    self.superFooterContainer.subviewSpace = 0.5;
    self.superFooterContainer.myWidth = MyLayoutSize.fill;
    self.superFooterContainer.myHeight = MyLayoutSize.wrap;
    [self.superRootContainer addSubview:self.superFooterContainer];

    for (QMUIButton *it in self.buttons) {
        [self.superFooterContainer addSubview:it];
    }
}

- (void)setTitleText:(NSString *)titleText{
    self.titleView.text=titleText;
}

/// 设置确认按钮
/// @param title <#title description#>
/// @param target <#target description#>
/// @param action <#selector description#>
-(SuperDialogController *)setConfirmButton:(NSString *)title target:(nullable id)target action:(SEL)action{
    [self addButton:title color:[UIColor primaryColor] target:target action:action];
    return self;
}

/// 设置警告按钮
-(SuperDialogController *)setWarningButton:(NSString *)title target:(nullable id)target action:(SEL)action{
    [self addButton:title color:[UIColor warning] target:target action:action];
    return self;
}

/// 设置取消按钮
-(SuperDialogController *)setCancelButton:(NSString *)title target:(nullable id)target action:(SEL)action{
    [self addButton:title color:[UIColor colorOnSurface] target:target action:action];
    return self;
}

-(SuperDialogController *)addButton:(NSString *)title color:(UIColor *)color target:(nullable id)target action:(SEL)action{
    QMUIButton *result = [ViewFactoryUtil title:title color:color];
    
    if (action) {
        //点击事件
        [result addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    } else {
        //默认就是隐藏
        [result addTarget:self action:@selector(onCancelClick:) forControlEvents:UIControlEventTouchUpInside];
    }

    result.myWidth = MyLayoutSize.wrap;
    result.myHeight = BUTTON_LARGE;
    result.weight = 1;
    
    [self.buttons addObject:result];
    
    return self;
}

/// 显示
-(void)show{
    if (self.modalController.visible) {
        //已经显示了，就不再显示
        return;
    }
    
    self.modalController = [QMUIModalPresentationViewController new];
    self.modalController.animationStyle=QMUIModalPresentationAnimationStyleFade;
    
    //点击外部不隐藏
    [self.modalController setModal:YES];
    
    //边距
    self.modalController.contentViewMargins = UIEdgeInsetsMake(PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2);
    
    //设置要显示的内容控件
    self.modalController.contentViewController = self;
    [self.modalController showWithAnimated:YES completion:nil];
}

-(void)hide{
    [self.modalController hideWithAnimated:YES completion:nil];
}

/// 取消点击
/// @param sender sender description
-(void)onCancelClick:(UIButton *)sender{
    [self hide];
}

- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        _titleView.myWidth = MyLayoutSize.fill;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.text = @"标题";
        _titleView.textAlignment = NSTextAlignmentCenter;
        _titleView.font = [UIFont systemFontOfSize:TEXT_LARGE3];
        _titleView.textColor = [UIColor colorOnSurface];
    }
    return _titleView;
}

- (NSMutableArray *)buttons{
    if (!_buttons) {
        _buttons = [[NSMutableArray alloc] init];
    }
    return _buttons;
}

@end
