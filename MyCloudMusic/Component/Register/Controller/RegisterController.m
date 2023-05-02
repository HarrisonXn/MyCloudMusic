//
//  RegisterController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "RegisterController.h"
#import "SuperInputView.h"

@interface RegisterController ()
@property(nonatomic, strong) SuperInputView *nicknameView;
@property(nonatomic, strong) SuperInputView *phoneView;
@property(nonatomic, strong) SuperInputView *emailView;
@property(nonatomic, strong) SuperInputView *passwordView;
@property(nonatomic, strong) SuperInputView *confirmPasswordView;
@end

@implementation RegisterController

- (void)initViews{
    [super initViews];
    
    [self initLinearLayoutSafeArea];
    
    [self setTitle:R.string.localizable.registerNow];
    
    self.container.padding = UIEdgeInsetsMake(PADDING_LARGE, PADDING_OUTER, 0, PADDING_OUTER);
    self.container.subviewSpace = PADDING_LARGE;
    
    //昵称输入框
    _nicknameView = [SuperInputView withPlaceholder:R.string.localizable.enterNickname];
    [self.container addSubview:_nicknameView];
    
    _phoneView = [SuperInputView withPlaceholder:R.string.localizable.enterPhone];
    [self.container addSubview:_phoneView];
    
    _emailView = [SuperInputView withPlaceholder:R.string.localizable.enterEmail];
    [self.container addSubview:_emailView];
    
    _passwordView = [SuperInputView withPlaceholder:R.string.localizable.enterPassword];
    [_passwordView passwordStyle];
    [self.container addSubview:_passwordView];
    
    _confirmPasswordView = [SuperInputView withPlaceholder:R.string.localizable.enterConfirmPassword];
    [_confirmPasswordView passwordStyle];
    [self.container addSubview:_confirmPasswordView];
    
    //按钮
    QMUIButton *primaryButton = [ViewFactoryUtil primaryHalfFilletButton];
    [primaryButton setTitle:R.string.localizable.registerAndLogin forState:UIControlStateNormal];
    [primaryButton addTarget:self action:@selector(onPrimaryClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.container addSubview:primaryButton];
}

/// 手机号登录
/// @param sender <#sender description#>
- (void)onPrimaryClick:(QMUIButton *)sender{
    NSString *nickname = [_nicknameView.textFieldView.text trim];
    if ([StringUtil isBlank:nickname]) {
        [SuperToast showWithTitle:R.string.localizable.enterNickname];
        return;
    }

    NSString *phone = [_phoneView.textFieldView.text trim];
    if ([StringUtil isBlank:phone]) {
        [SuperToast showWithTitle:R.string.localizable.enterPhone];
        return;
    }

    NSString *email = [_emailView.textFieldView.text trim];
    if ([StringUtil isBlank:email]) {
        [SuperToast showWithTitle:R.string.localizable.enterEmail];
        return;
    }

    //获取密码
    NSString *password = [_passwordView.textFieldView.text trim];
    if ([StringUtil isBlank:password]) {
        [SuperToast showWithTitle:R.string.localizable.enterPassword];
        return;
    }

    //判断密码格式
    if (![StringUtil isPassword:password]) {
        [SuperToast showWithTitle:R.string.localizable.errorPasswordFormat];
        return;
    }

    //确认获取密码
    NSString *confirmPassword = [_confirmPasswordView.textFieldView.text trim];
    if ([StringUtil isBlank:confirmPassword]) {
        [SuperToast showWithTitle:R.string.localizable.enterConfirmPassword];
        return;
    }

    //判断确认密码是否一致
    if (![password isEqualToString:confirmPassword]) {
        [SuperToast showWithTitle:R.string.localizable.errorConfirmPassword];
        return;
    }
    
    User *param=[User new];

    param.nickname=nickname;
    param.phone=phone;
    param.email=email;
    param.password=password;

    [[DefaultRepository shared] userRegister:param success:^(BaseResponse * _Nonnull baseResponse, id  _Nonnull data) {
       //注册成功后，自动登陆，这样用户体验更好
        [self login:param];
    }];
}

@end
