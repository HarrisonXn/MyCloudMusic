//
//  SuperSettingView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/27.
//

#import "SuperSettingView.h"

@implementation SuperSettingView

- (instancetype)init{
    self=[super initWithOrientation:MyOrientation_Horz];
    [self initViews];
    [self initListeners];
    
    return self;
}

-(void)initViews{
    self.myWidth = MyLayoutSize.fill;
    self.myHeight = 55;
    self.padding = UIEdgeInsetsMake(0, PADDING_OUTER, 0, PADDING_OUTER);
    self.gravity = MyGravity_Vert_Center;
    self.subviewSpace = PADDING_MEDDLE;
    self.backgroundColor = [UIColor colorSurface];
    
    [self addSubview:self.iconView];
    [self addSubview:self.titleView];
    [self addSubview:self.moreView];
    [self addSubview:self.moreIconView];
}

// 小容器样式
-(void)small{
    self.padding = UIEdgeInsetsMake(0, PADDING_OUTER, 0, PADDING_OUTER);
    self.myHeight=50;
}

-(void)initListeners{
    self.userInteractionEnabled = YES;
    
    //点击
    UITapGestureRecognizer *tapGestureRecognizer=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapClick:)];
//    tapGestureRecognizer.delegate=self;
    [self addGestureRecognizer:tapGestureRecognizer];
}

-(void)onTapClick:(UITapGestureRecognizer *)gestureRecognizer{
    if (self.click) {
        self.click(gestureRecognizer.qmui_targetView);
    }
}
#pragma mark - 创建方法
+ (instancetype)smallWithIcon:(UIImage *)icon title:(NSString *)title click:(ViewClick)click{
    SuperSettingView *result = [SuperSettingView new];
    
    //小容器
    [result small];
    
    //设置数据
    result.iconView.image = [icon withTintColor];
    result.titleView.text = title;
    
    result.click = click;
    
    return result;
}
#pragma mark - 创建控件

- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [UIImageView new];
        _iconView.myWidth = 20;
        _iconView.myHeight = 20;
        _iconView.tintColor = [UIColor colorOnBackground];
        _iconView.myCenterY = 0;
    }
    return _iconView;
}

- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        
        //因为设置了父容器为MyGravity_Horz_Stretch，所以子view如果不设置宽度
        //就会填充沾满剩余宽度
        _titleView.myWidth = MyLayoutSize.wrap;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.text = @"这是标题";
        _titleView.font = [UIFont systemFontOfSize:TEXT_LARGE];
        _titleView.textColor = [UIColor colorOnBackground];
        _titleView.weight=1;
    }
    return _titleView;
}

- (UILabel *)moreView{
    if (!_moreView) {
        _moreView = [UILabel new];
        _moreView.myWidth = MyLayoutSize.wrap;
        _moreView.myHeight = MyLayoutSize.wrap;
        _moreView.font = [UIFont systemFontOfSize:TEXT_SMALL];
        _moreView.textColor = [UIColor lightGray];
        _moreView.myCenterY = 0;
        _moreView.rightPos.equalTo(self.moreIconView.leftPos).offset(5);
    }
    return _moreView;
}

- (UIImageView *)moreIconView{
    if (!_moreIconView) {
        _moreIconView = [ViewFactoryUtil moreIconView];
        _moreIconView.myCenterY = 0;
        _moreIconView.myRight=0;
    }
    return _moreIconView;
}

@end
