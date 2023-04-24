//
//  DiscoveryButtonView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "DiscoveryButtonView.h"

@implementation DiscoveryButtonView

-(instancetype)init{
    self=[super initWithOrientation:MyOrientation_Vert];

    [self initViews];
    
    return self;
}

-(void)initViews{
    //设置约束
    self.myWidth = MyLayoutSize.wrap;
    self.myHeight = MyLayoutSize.wrap;

    //控件之间间距
    self.subviewSpace = PADDING_MEDDLE;
    
    //水平居中
    self.gravity = MyGravity_Horz_Center;
    
    //添加其他控件
    MyRelativeLayout *iconContainer=[MyRelativeLayout new];
    iconContainer.myWidth = 50;
    iconContainer.myHeight = 50;

    [self addSubview:iconContainer];
        
    [iconContainer addSubview:self.iconView];
    [iconContainer addSubview:self.tipView];
    
    [self addSubview:self.titleView];
}

- (void)showWithTitle:(NSString *)title icon:(UIImage *)icon{
    _titleView.text = title;
    _iconView.image = icon;
}

#pragma mark - 创建控件
- (UIImageView *)iconView{
    if (!_iconView) { // 此处为getter方法，不可用self.
        _iconView = [UIImageView new];// 此处为setter方法，可以使用self.
        _iconView.myWidth = 50;
        _iconView.myHeight = 50;
        _iconView.image = R.image.dayRecommend;
        
    }
    return _iconView;// getter方法
}

- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        _titleView.myWidth = MyLayoutSize.wrap;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.numberOfLines = 0;
        _titleView.text = @"每日推荐";
        _titleView.font = [UIFont systemFontOfSize:13];
        _titleView.textColor = [UIColor colorOnSurface];
    }
    return _titleView;
}

- (UILabel *)tipView{
    if (!_tipView) {
        _tipView = [UILabel new];
        _tipView.myWidth = MyLayoutSize.wrap;
        _tipView.myHeight = MyLayoutSize.wrap;
        _tipView.numberOfLines = 0;
        _tipView.font = [UIFont systemFontOfSize:13];
        _tipView.textColor = [UIColor colorLightWhite];
        _tipView.myCenterX=0;
        
        //正数向下偏移
        _tipView.myCenterY=3;
    }
    return _tipView;
}

@end
