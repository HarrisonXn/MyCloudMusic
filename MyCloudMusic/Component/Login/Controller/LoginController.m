//
//  LoginController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "LoginController.h"
#import "SuperInputView.h"
#import "SuperRegularUtil.h"
#import "RegisterController.h"

@interface LoginController ()
/// 用户名输入框
@property(nonatomic, strong) SuperInputView *usernameView;

/// 密码输入框
@property(nonatomic, strong) SuperInputView *passwordView;
@end

@implementation LoginController

- (void)initViews{
    [super initViews];
        
    [self initLinearLayoutSafeArea];
    
    [self setTitle:R.string.localizable.login];
    
    self.container.padding = UIEdgeInsetsMake(PADDING_LARGE, PADDING_OUTER, 0, PADDING_OUTER);
    self.container.subviewSpace = PADDING_LARGE;
    
    //用户名输入框
    _usernameView = [SuperInputView withImage:[R.image.inputUsername withTintColor] placeholder:R.string.localizable.enterUsername];
    [_usernameView smallRadius];
    [self.container addSubview:_usernameView];
    
    //密码输入框
    _passwordView = [SuperInputView withImage:[R.image.inputPassword withTintColor] placeholder:R.string.localizable.enterPassword];
    [_passwordView smallRadius];
    [_passwordView passwordStyle];
    [self.container addSubview:_passwordView];

    //按钮
    QMUIButton *primaryButton = [ViewFactoryUtil primaryHalfFilletButton];
    [primaryButton setTitle:R.string.localizable.login forState:UIControlStateNormal];
    [primaryButton addTarget:self action:@selector(onPrimaryClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.container addSubview:primaryButton];
    
    MyRelativeLayout *controlContainer = [MyRelativeLayout new];
    controlContainer.myWidth = MyLayoutSize.fill;
    controlContainer.myHeight = MyLayoutSize.wrap;
    [self.container addSubview:controlContainer];

    //立即注册按钮
    QMUIButton *registerView = [ViewFactoryUtil linkButton];
    [registerView setTitle:R.string.localizable.registerNow forState: UIControlStateNormal];
    [registerView setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    [registerView addTarget:self action:@selector(onRegisterClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [registerView sizeToFit];
    [controlContainer addSubview:registerView];
    
    //忘记密码按钮
    QMUIButton *forgotPasswordView = [ViewFactoryUtil linkButton];
    [forgotPasswordView setTitle:R.string.localizable.forgotPassword forState: UIControlStateNormal];
    [forgotPasswordView setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    [forgotPasswordView addTarget:self action:@selector(onForgotPasswordViewClick:) forControlEvents:UIControlEventTouchUpInside];
    forgotPasswordView.myRight=0;

    [forgotPasswordView sizeToFit];
    [controlContainer addSubview:forgotPasswordView];
    
    #ifdef DEBUG
    //添加测试账号，方便测试
    _usernameView.textFieldView.text=@"13141111222";
    _passwordView.textFieldView.text=@"ixueaedu";
    #endif

}
#pragma mark - 事件

/// 登录
/// @param sender <#sender description#>
- (void)onPrimaryClick:(QMUIButton *)sender{
    //获取用户名
    NSString *username = [_usernameView.textFieldView.text trim];
    if ([StringUtil isBlank:username]) {
        [SuperToast showWithTitle:R.string.localizable.enterUsername];
        return;
    }

    //如果用户名
    //不是手机号也不是邮箱
    //就是格式错误
    if (!([SuperRegularUtil isPhone:username] || [SuperRegularUtil isEmail:username])) {
        [SuperToast showWithTitle:R.string.localizable.errorUsernameFormat];
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
    
    //判断是手机号还有邮箱
    User *user=[User new];
    user.password=password;

    if ([SuperRegularUtil isPhone:username]) {
        //手机号
        user.phone = username;
    } else {
        //邮箱
        user.email = username;
    }

    //调用父类的登录方法
    [self login:user];
}

-(void)onRegisterClick:(UIButton *)sender{
    [self startController:[RegisterController class]];

}

-(void)onForgotPasswordViewClick:(UIButton *)sender{
    
}

@end
