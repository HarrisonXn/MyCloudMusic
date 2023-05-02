//
//  SuperInputView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "SuperInputView.h"

@implementation SuperInputView

- (void)initViews{
    [super initViews];
    
    self.myWidth = MyLayoutSize.fill;
    self.myHeight = MyLayoutSize.wrap;
}

-(void)initInput{
    //内容容器
    _container = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
    _container.myWidth = MyLayoutSize.fill;
    _container.myHeight = MyLayoutSize.wrap;
    _container.subviewSpace=PADDING_SMALL;
    _container.gravity = MyGravity_Vert_Center;
    [self addSubview:_container];
    
    [_container addSubview:self.iconView];
//    [_container addSubview:self.titleView];
    [_container addSubview:self.textFieldView];
}

-(void)smallRadius{
    //小圆角，边框
    self.layer.cornerRadius = SMALL_RADIUS;
    self.layer.borderWidth = 1;
    self.layer.borderColor = [[UIColor colorDivider] CGColor];
    
    //两端有padding
    _container.paddingLeading = PADDING_MEDDLE;
    _container.paddingTrailing = PADDING_MEDDLE;
}

/// 底部显示边框
-(void)borderBottom{
    self.qmui_borderColor = [UIColor black90];
    self.qmui_borderPosition = QMUIViewBorderPositionBottom;
}

-(void)passwordStyle{
    _textFieldView.secureTextEntry = YES;
}

#pragma mark - 快捷创建方法
+(SuperInputView *)withImage:(UIImage *)image placeholder:(NSString *)placeholder{
    SuperInputView *result = [SuperInputView new];
    
    [result initInput];
    
    //图标
    result.iconView.image = image;
    result.iconView.visibility = MyVisibility_Visible;
    
    //输入框
    result.textFieldView.placeholder = placeholder;
    
    return result;
}

+(SuperInputView *)withPlaceholder:(NSString *)placeholder{
    SuperInputView *result = [SuperInputView new];
    
    [result initInput];
    
    //输入框
    result.textFieldView.placeholder = placeholder;
    
    [result borderBottom];
    
    return result;
}

#pragma mark - 创建控件

- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [UIImageView new];
        _iconView.myWidth = 20;
        _iconView.myHeight=20;
        _iconView.tintColor = [UIColor black66];
        _iconView.image = [R.image.inputUsername withTintColor];
        _iconView.visibility = MyVisibility_Gone;
    }
    return _iconView;
}

- (QMUITextField *)textFieldView{
    if (!_textFieldView) {
        _textFieldView = [QMUITextField new];
        _textFieldView.myWidth = MyLayoutSize.wrap;
        _textFieldView.myHeight = INPUT_MEDDLE;
        _textFieldView.weight=1;
        _textFieldView.placeholder = @"请输入用户名";
        _textFieldView.font = [UIFont systemFontOfSize:TEXT_LARGE2];
        _textFieldView.textColor = [UIColor colorOnSurface];
        
        //编辑的时候显示清除按钮
        _textFieldView.clearButtonMode = UITextFieldViewModeWhileEditing;
        
        //关闭首字母大写
        _textFieldView.autocapitalizationType = UITextAutocapitalizationTypeNone;
    }
    return _textFieldView;
}


@end
