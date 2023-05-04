//
//  InputCodeController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/5/4.
//
//验证码输入框
#import <CRBoxInputView/CRBoxInputView.h>

#import "InputCodeController.h"

@interface InputCodeController ()
@property(nonatomic, strong) UILabel *codeSendTargetView;
@property(nonatomic, strong) QMUIButton *sendView;

/// 验证码输入框
@property (nonatomic, strong) CRBoxInputView *codeInputView;
@end

@implementation InputCodeController

- (void)initViews{
    [super initViews];
    [self setBackgroundColor:[UIColor colorLightWhite]];
    
    [self initLinearLayoutInputSafeArea];
    
    self.container.padding = UIEdgeInsetsMake(PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2);
    
    self.container.gravity = MyGravity_Horz_Right;

    //请输入验证码标题
    UILabel *inputTitleView = [UILabel new];
    inputTitleView.myWidth = MyLayoutSize.fill;
    inputTitleView.myHeight = MyLayoutSize.wrap;
    inputTitleView.text=R.string.localizable.verificationCode;
    inputTitleView.font = UIFontBoldMake(TEXT_LARGE4);
    inputTitleView.textColor = [UIColor colorOnSurface];
    [self.container addSubview:inputTitleView];

    //提示
    _codeSendTargetView = [UILabel new];
    _codeSendTargetView.myWidth = MyLayoutSize.fill;
    _codeSendTargetView.myHeight = MyLayoutSize.wrap;
    _codeSendTargetView.text=R.string.localizable.verificationCodeSentTo;
    _codeSendTargetView.font = UIFontMake(TEXT_MEDDLE);
    _codeSendTargetView.textColor = [UIColor colorOnSurface];
    [self.container addSubview:_codeSendTargetView];

    //验证码输入框
    self.codeInputView = [[CRBoxInputView alloc] initWithCodeLength:6];
    self.codeInputView.myTop = 30;
    self.codeInputView.myWidth = MyLayoutSize.fill;
    self.codeInputView.myHeight = 50;
    
    // 不设置时，默认UIKeyboardTypeNumberPad
    self.codeInputView.keyBoardType = UIKeyboardTypeNumberPad;
    
    CRBoxInputCellProperty *cellProperty = [CRBoxInputCellProperty new];
    cellProperty.cellBorderColorSelected = [UIColor colorPrimary];
    self.codeInputView.customCellProperty = cellProperty;

    // BeginEdit:是否自动启用编辑模式
    [self.codeInputView loadAndPrepareViewWithBeginEdit:YES];
    [self.contentContainer  addSubview:self.codeInputView];
    
    // 输入类型（纯数字）
    _codeInputView.inputType = CRInputType_Number;
    
    // 获取值
    // 方法1, 当输入文字变化时触发回调block
    @weakify(self);
    _codeInputView.textDidChangeblock = ^(NSString *text, BOOL isFinished) {
        @strongify(self);
        NSLog(@"text:%@", text);
        if (isFinished) {
            [self processNext:text];
        }
    };
    [self.container addSubview:_codeInputView];
    
    //重新发送按钮
    _sendView = [ViewFactoryUtil linkButton];
    [_sendView setTitle:R.string.localizable.resend forState: UIControlStateNormal];
    [_sendView setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    
    //点击事件
    [_sendView addTarget:self action:@selector(onSendClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [_sendView sizeToFit];
    [self.container addSubview:_sendView];
}

- (void)onSendClick:(UIButton *)sender{
    [self sendCode];
}

- (void)sendCode{
    
}

- (void)processNext:(NSString *)data{
    if (_pageData.style == StylePhoneLogin) {
        //手机号验证码登录
        User *param = [User new];
        param.phone=_pageData.phone;
        param.email=_pageData.email;
        param.code=data;
        [self login:param];
    }
}

+ (void)start:(UINavigationController *)controller data:(InputCodePageData *)data{
    InputCodeController *newController=[[InputCodeController alloc] init];
    
    newController.pageData=data;
    
    [controller pushViewController:newController animated:YES];
}
@end
