//
//  PlaceholderView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/14.
//

#import "PlaceholderView.h"

@implementation PlaceholderView

- (instancetype)init{
    self=[super init];
    
    [self initViews];
    
    return self;
}

- (void)initViews{
    //设置约束
    self.myWidth = MyLayoutSize.fill;
    self.myHeight = MyLayoutSize.fill;
    
    //内边距
    self.padding = UIEdgeInsetsMake(PADDING_OUTER, PADDING_OUTER, PADDING_OUTER, PADDING_OUTER);
    
    //创建一个垂直方向容器
    MyLinearLayout *container = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    container.myWidth = MyLayoutSize.wrap;
    container.myHeight = MyLayoutSize.wrap;
    
    //控件之间间距
    container.subviewSpace = PADDING_OUTER;
    
    //内容水平居中
    container.gravity = MyGravity_Horz_Center;
    
    //居中
    container.centerYPos.equalTo(@0);
    container.centerXPos.equalTo(@0);
    [self addSubview:container];
    
    //添加其他控件
    [container addSubview:self.iconView];
    [container addSubview:self.titleView];
}

- (void)showWithTitle:(NSString *)title icon:(UIImage *)icon{
    
}

#pragma mark - 创建控件
- (UIImageView *)iconView{
    if (!_iconView) { // 此处为getter方法，不可用self.
        _iconView = [UIImageView new];// 此处为setter方法，可以使用self.
        _iconView.myWidth = 150;
        _iconView.myHeight = 150;
        _iconView.image = R.image.alert;
        
    }
    return _iconView;// getter方法
}

- (UILabel *)titleView{
    if (!_titleView) { // 此处为getter方法，不可用self.
        _titleView = [UILabel new];// 此处为setter方法，可以使用self.
        _titleView.myWidth = MyLayoutSize.wrap;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.numberOfLines = 0;
        _titleView.text = R.string.localizable.networkErrorClickReload;
        _titleView.textColor = [UIColor grayColor];
    }
    return _titleView;// getter方法
}
@end
