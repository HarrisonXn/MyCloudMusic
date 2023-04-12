//
//  TermServiceDialogController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/11.
//

#import "TermServiceDialogController.h"
//#import "UIColor+Config.h"
//#import "UIColor+Theme.h"
//#import "ViewFactoryUtil.h"
//#import "Constant.h"
//#import "R.h"

@interface TermServiceDialogController ()<QMUIModalPresentationContentViewControllerProtocol>

@end

@implementation TermServiceDialogController
- (void)initViews{
    [super initViews];
    
    //设置视图背景与宽高
    self.view.backgroundColor = [UIColor colorDivider];
    self.view.myWidth = MyLayoutSize.fill;
    self.view.myHeight = MyLayoutSize.wrap;
    self.view.layer.cornerRadius = BUTTON_HUGE_RADIUS;
    
    //设置根容器
    _rootContainer = [[MyLinearLayout alloc]initWithOrientation:MyOrientation_Vert];
    _rootContainer.subviewSpace = 0.5;
    _rootContainer.myWidth = MyLayoutSize.fill;
    _rootContainer.myHeight = MyLayoutSize.wrap;
    [self.view addSubview:_rootContainer];
    
    //设置内容容器
    _contentContainer = [[MyLinearLayout alloc]initWithOrientation:MyOrientation_Vert];
    _contentContainer.subviewSpace = 25;
    _contentContainer.myWidth = MyLayoutSize.fill;
    _contentContainer.myHeight = MyLayoutSize.wrap;
    _contentContainer.backgroundColor = [UIColor colorBackground];
    _contentContainer.padding = UIEdgeInsetsMake(30, 16, 30, 16);
    _contentContainer.gravity = MyGravity_Horz_Center;
    _contentContainer.layer.cornerRadius = BUTTON_HUGE_RADIUS;
    [_rootContainer addSubview:_contentContainer];
    
    //标题
    [self.contentContainer addSubview:self.titleView];
    
    //内容
    self.textView=[UITextView new];
    self.textView.myWidth=MyLayoutSize.fill;
    self.textView.myHeight=230;
    self.textView.text=@"隐私政策本应用尊重并保护所有使用服务用户的个人隐私权。为了给您提供更准确、更有个性化的服务，本应用会按照本隐私权政策的规定使用和披露您的个人信息。但本应用将以高度的勤勉、审慎义务对待这些信息。除本隐私权政策另有规定外，在未征得您事先许可的情况下，本应用不会将这些信息对外披露或向第三方提供。本应用会不时更新本隐私权政策。 您在同意本应用服务使用协议之时，即视为您已经同意本隐私权政策全部内容。本隐私权政策属于本应用服务使用协议不可分割的一部分。1. 适用范围a) 在您注册本应用帐号时，您根据本应用要求提供的个人注册信息；b) 在您使用本应用网络服务，或访问本应用平台网页时，本应用自动接收并记录的您的浏览器和计算机上的信息，包括但不限于您的IP地址、浏览器的类型、使用的语言、访问日期和时间、软硬件特征信息及您需求的网页记录等数据；c) 本应用通过合法途径从商业伙伴处取得的用户个人数据。您了解并同意，以下信息不适用本隐私权政策：a) 您在使用本应用平台提供的搜索服务时输入的关键字信息；b) 本应用收集到的您在本应用发布的有关信息数据，包括但不限于参与活动、成交信息及评价详情；c) 违反法律规定或违反本应用规则行为及本应用已对您采取的措施。2. 信息使用a) 本应用不会向任何无关第三方提供、出售、出租、分享或交易您的个人信息，除非事先得到您的许可，或该第三方和本应用（含本应用关联公司）单独或共同为您提供服务，且在该服务结束后，其将被禁止访问包括其以前能够访问的所有这些资料。b) 本应用亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播您的个人信息。任何本应用平台用户如从事上述活动，一经发现，本应用有权立即终止与该用户的服务协议。c) 为服务用户的目的，本应用可能通过使用您的个人信息，向您提供您感兴趣的信息，包括但不限于向您发出产品和服务信息，或者与本应用合作伙伴共享信息以便他们向您发送有关其产品和服务的信息（后者需要您的事先同意）。3. 信息披露在如下情况下，本应用将依据您的个人意愿或法律的规定全部或部分的披露您的个人信息：a) 经您事先同意，向第三方披露；b) 为提供您所要求的产品和服务，而必须和第三方分享您的个人信息；c) 根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露；d) 如您出现违反中国有关法律、法规或者本应用服务协议或相关规则的情况，需要向第三方披露；e) 如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷；f) 在本应用平台上创建的某一交易中，如交易任何一方履行或部分履行了交易义务并提出信息披露请求的，本应用有权决定向该用户提供其交易对方的联络方式等必要信息，以促成交易的完成或纠纷的解决。g) 其它本应用根据法律、法规或者网站政策认为合适的披露。4. 信息存储和交换本应用收集的有关您的信息和资料将保存在本应用及（或）其关联公司的服务器上，这些信息和资料可能传送至您所在国家、地区或本应用收集信息和资料所在地的境外并在境外被访问、存储和展示。5. Cookie的使用a) 在您未拒绝接受cookies的情况下，本应用会在您的计算机上设定或取用cookies ，以便您能登录或使用依赖于cookies的本应用平台服务或功能。本应用使用cookies可为您提供更加周到的个性化服务，包括推广服务。b) 您有权选择接受或拒绝接受cookies。您可以通过修改浏览器设置的方式拒绝接受cookies。但如果您选择拒绝接受cookies，则您可能无法登录或使用依赖于cookies的本应用网络服务或功能。c) 通过本应用所设cookies所取得的有关信息，将适用本政策。";
    self.textView.backgroundColor = [UIColor clearColor];
        
    //禁用编辑
    self.textView.editable=NO;
    
    [self.contentContainer addSubview:self.textView];
    
    [self.contentContainer addSubview:self.primaryButton];
    
    //不同意按钮按钮
    self.disagreeButton = [ViewFactoryUtil linkButton];
    [self.disagreeButton setTitle:R.string.localizable.disagree forState: UIControlStateNormal];
    [self.disagreeButton setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    [self.disagreeButton addTarget:self action:@selector(disagreeClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.disagreeButton sizeToFit];
    [self.contentContainer addSubview:self.disagreeButton];
}

- (void)show{
    ///将上面布局的所有UIView添加到这个modalController中，实现弹出
    ///QMUIModalPresentationViewController 一个提供通用的弹出浮层功能的控件，可以将任意`UIView`或`UIViewController`以浮层的形式显示出来并自动布局。
    self.modalController = [QMUIModalPresentationViewController new];
    self.modalController.animationStyle = QMUIModalPresentationAnimationStyleFade;
    
    //点击外部不隐藏
    [self.modalController setModal:YES];
    
    //边距
    self.modalController.contentViewMargins=UIEdgeInsetsMake(PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2, PADDING_LARGE2);
    
    //设置要显示的内容控件
    self.modalController.contentViewController = self;
    
    [self.modalController showWithAnimated:YES completion:nil];
}

- (void)hide{
    [self.modalController hideWithAnimated:YES completion:nil];
}
#pragma mark - 事件
-(void)disagreeClick:(UIButton *)sender{
    [self hide];
    
    //退出应用
//    AppDelegate *app = [UIApplication sharedApplication].delegate;
//    UIWindow *window = app.window;
//
//    [UIView animateWithDuration:0.5f animations:^{
//        window.alpha = 0;
//        window.frame = CGRectMake(0, window.bounds.size.width, 0, 0);
//    } completion:^(BOOL finished) {
//        exit(0);
//    }];
    
    exit(0);
}
#pragma mark - 创建控件
- (UILabel *)titleView{
    if (!_titleView) {
        _titleView=[UILabel new];
        _titleView.myWidth=MyLayoutSize.fill;
        _titleView.myHeight=MyLayoutSize.wrap;
        _titleView.text=@"标题";
        _titleView.textAlignment=NSTextAlignmentCenter;
        _titleView.font=[UIFont boldSystemFontOfSize:TEXT_LARGE3];
        _titleView.textColor=[UIColor colorOnSurface];
    }
    return _titleView;
}

- (QMUIButton *)primaryButton{
    if (!_primaryButton) {
        _primaryButton = [ViewFactoryUtil primaryHalfFilletButton];
        [_primaryButton setTitle:R.string.localizable.agree forState:UIControlStateNormal];
    }
    return _primaryButton;
}

@end