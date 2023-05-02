//
//  DrawerController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/27.
//

#import "DrawerController.h"
#import "SuperSettingView.h"
#import "LoginHomeController.h"
#import "ImageUtil.h"
#import "AppDelegate.h"
#import "SuperDialogController.h"
#import "AppDelegate.h"

@interface DrawerController ()
/// 我的消息item，之所有放到字段，是因为要实现在该控件，显示红点
@property(nonatomic, strong) SuperSettingView *messgeView;

/// 头像
@property(nonatomic, strong) UIImageView *iconView;

/// 昵称
@property(nonatomic, strong) UILabel *nicknameView;

/// 扫码按钮
@property(nonatomic, strong) QMUIButton *scanView;

@property(nonatomic, strong) QMUIButton *primaryButton;

/// 退出确认对话框
@property(nonatomic, strong) SuperDialogController *logoutConfirmController;

@end

@implementation DrawerController

- (void)initViews{
    [super initViews];
    [self setBackgroundColor:[UIColor colorSlideBackground]];
    
    [self initScrollSafeArea];
    
    //用户信息容器
    [self initUserView];
    
    //黑胶唱片
    [self initRecordView];
    
    //我的消息菜单
    [self initMessageMenu];
    
    //商城菜单
    [self initShopMenu];
    
    //其他菜单
    [self initOtherMenu];
    
    //关于菜单
    [self initAboutMenu];
    
    //退出按钮
    self.primaryButton = [ViewFactoryUtil primaryHalfFilletOutlineButton];
    [self.primaryButton setTitle:R.string.localizable.logout forState:UIControlStateNormal];
    self.primaryButton.myTop = PADDING_OUTER;
    [self.primaryButton addTarget:self action:@selector(onPrimaryClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.primaryButton hide];
    [self.contentContainer addSubview:self.primaryButton];
}
/// 界面即将显示
/// @param animated <#animated description#>
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showUserInfo];
}

-(void)showUserInfo{
    if ([PreferenceUtil isLogin]) {
        //已经登录了

        //获取用户信息
        [self loadUserData];

        [self.primaryButton show];
    } else {
        [self showNotLogin];
    }
}

-(void)loadUserData{
    [[DefaultRepository shared] userDetailWithId:[PreferenceUtil getUserId] success:^(BaseResponse * _Nonnull baseResponse, id  _Nonnull data) {
        [self show:data];
    }];
}

-(void)show:(User *)data{
    //显示头像
//    [ImageUtil showAvatar:self.iconView uri:data.icon];
    _iconView.image = R.image.defaultAvatar;
  
    //显示昵称
    self.nicknameView.text = @"邢世航";
}

-(void)showNotLogin{
    self.iconView.image = R.image.defaultAvatar;
    self.nicknameView.text = R.string.localizable.loginNow;
    [self.primaryButton hide];
}

///退出确认点击
/// @param sender <#sender description#>
- (void)onPrimaryConfirmClick:(QMUIButton *)sender{
    [self.logoutConfirmController hide];
    [self showNotLogin];
    [self closeDrawer];
    [[AppDelegate shared] logout];
}
#pragma mark - 创建控件 用户
-(void)initUserView{
    //头像那部分，因为这部分不会在应用其他位置使用，所以就不在封装到view中
    //当然真实项目中，如果为了更加方便管理，那也可以封装到单独view
    //相对容器
    MyRelativeLayout *userContainer = [MyRelativeLayout new];
    userContainer.myWidth = MyLayoutSize.fill;
    userContainer.myHeight = MyLayoutSize.wrap;
    userContainer.padding = UIEdgeInsetsMake(PADDING_OUTER, PADDING_OUTER, PADDING_OUTER, PADDING_OUTER);
    //点击
    UITapGestureRecognizer *tapGestureRecognizer=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onUserClick:)];
    [userContainer addGestureRecognizer:tapGestureRecognizer];
    //头像
    [userContainer addSubview:self.iconView];
    //昵称
    [userContainer addSubview:self.nicknameView];
    
    UIImageView *moreView = [ViewFactoryUtil moreIconView];
    moreView.centerYPos.equalTo(@(0));
    moreView.leftPos.equalTo(self.nicknameView.rightPos).offset(3);
    [userContainer addSubview:moreView];
    //扫描按钮
    [userContainer addSubview:self.scanView];
    [self.container insertSubview:userContainer atIndex:0];
    self.contentContainer.padding = UIEdgeInsetsMake(PADDING_OUTER, PADDING_OUTER, PADDING_OUTER, PADDING_OUTER);
    self.contentContainer.subviewSpace = PADDING_OUTER;
}

#pragma mark - 创建控件 黑胶唱片
-(void)initRecordView{
    MyLinearLayout *recordContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    recordContainer.myWidth = MyLayoutSize.fill;
    recordContainer.myHeight = MyLayoutSize.wrap;
    recordContainer.backgroundColor = [UIColor black42];
    [recordContainer radius];
    recordContainer.padding = UIEdgeInsetsMake(10, 10, 10, 10);
    recordContainer.subviewSpace = 10;
    [self.contentContainer addSubview:recordContainer];

    //开通黑胶VIP，会员中心容器
    MyRelativeLayout *vipContainer=[MyRelativeLayout new];
    vipContainer.myWidth = MyLayoutSize.fill;
    vipContainer.myHeight = MyLayoutSize.wrap;
    [recordContainer addSubview:vipContainer];

    //开通黑胶VIP
    UILabel *vipView = [UILabel new];
    vipView.myWidth = MyLayoutSize.wrap;
    vipView.myHeight = MyLayoutSize.wrap;
    vipView.text = R.string.localizable.buyVip;
    vipView.font = [UIFont systemFontOfSize:TEXT_MEDDLE];
    vipView.textColor = [UIColor black183];
    vipView.centerYPos.equalTo(@(0));
    [vipContainer addSubview:vipView];

    //会员中心按钮
    QMUIButton *memberView = [ViewFactoryUtil secondHalfFilletSmallButton];
    [memberView setTitle:R.string.localizable.memberCenter forState: UIControlStateNormal];
    [memberView setTitleColor:[UIColor colorWithHex:0xff837774] forState:UIControlStateNormal];
    memberView.qmui_borderWidth = 1;
    memberView.qmui_borderColor = [UIColor vipBorder];
    memberView.centerYPos.equalTo(@(0));
    memberView.myRight = 0;
    [vipContainer addSubview:memberView];

    //加入黑胶vip提示
    UILabel *vipHintView = [UILabel new];
    vipHintView.myWidth = MyLayoutSize.wrap;
    vipHintView.myHeight = MyLayoutSize.wrap;
    vipHintView.text = R.string.localizable.vipHint;
    vipHintView.font = [UIFont systemFontOfSize:12];
    vipHintView.textColor = [UIColor vipBorder];
    [recordContainer addSubview:vipHintView];

    //分割线
    UIView *divderView = [ViewFactoryUtil smallDivider];
    divderView.backgroundColor = [UIColor divider2];
    [recordContainer addSubview:divderView];

    //价格提示
    UILabel *priceHintView = [UILabel new];
    priceHintView.myWidth = MyLayoutSize.wrap;
    priceHintView.myHeight = MyLayoutSize.wrap;
    priceHintView.text = R.string.localizable.vipHintPrice;
    priceHintView.font = [UIFont systemFontOfSize:12];
    priceHintView.textColor = [UIColor vipBorder];
    [recordContainer addSubview:priceHintView];
}

#pragma mark - 创建控件 我的消息
-(void)initMessageMenu{
    MyLinearLayout *itemContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    itemContainer.myWidth = MyLayoutSize.fill;
    itemContainer.myHeight = MyLayoutSize.wrap;
    itemContainer.backgroundColor = [UIColor colorDivider];
    [itemContainer radius];
    itemContainer.subviewSpace = 0.5;
    [self.contentContainer addSubview:itemContainer];

    //我的消息
    _messgeView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myMessage click:^(UIView * _Nonnull view) {
        [self closeDrawer];
    }];
    [itemContainer addSubview:_messgeView];
    
    //我的好友
    SuperSettingView *itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myFriend click:^(UIView * _Nonnull view) {
        [self closeDrawer];

    }];
    [itemContainer addSubview:itemView];
    
    //我的粉丝
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myFans click:^(UIView * _Nonnull view) {
        [self closeDrawer];
        
    }];
    [itemContainer addSubview:itemView];
    
    //二维码
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myCode click:^(UIView * _Nonnull view) {
        [self closeDrawer];
    }];
    [itemContainer addSubview:itemView];
}

#pragma mark - 创建控件 商城
-(void)initShopMenu{
    MyLinearLayout *itemContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    itemContainer.myWidth = MyLayoutSize.fill;
    itemContainer.myHeight = MyLayoutSize.wrap;
    itemContainer.backgroundColor = [UIColor colorDivider];
    [itemContainer radius];
    itemContainer.subviewSpace = 0.5;
    [self.contentContainer addSubview:itemContainer];
    
    //商城
    SuperSettingView *itemView = [SuperSettingView smallWithIcon:R.image.shop title:R.string.localizable.mall click:^(UIView * _Nonnull view) {
        [self closeDrawer];
        
    }];
    [itemContainer addSubview:itemView];
    
    //我的订单
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myOrder click:^(UIView * _Nonnull view) {
        [self closeDrawer];
        
    }];
    [itemContainer addSubview:itemView];
    
    //购物车
    itemView = [SuperSettingView smallWithIcon:R.image.shopCart title:R.string.localizable.shopCart click:^(UIView * _Nonnull view) {
        [self closeDrawer];
        
    }];
    [itemContainer addSubview:itemView];
    
    //收货地址
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.receivingAddress click:^(UIView * _Nonnull view) {
        [self closeDrawer];
        
    }];
    [itemContainer addSubview:itemView];
}

#pragma mark - 创建控件 其他
-(void)initOtherMenu{
    MyLinearLayout *itemContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    itemContainer.myWidth = MyLayoutSize.fill;
    itemContainer.myHeight = MyLayoutSize.wrap;
    itemContainer.backgroundColor = [UIColor colorDivider];
    [itemContainer radius];
    itemContainer.subviewSpace = 0.5;
    [self.contentContainer addSubview:itemContainer];
    
    //标题
    QMUILabel *groupTitle = [QMUILabel new];
    groupTitle.myWidth = MyLayoutSize.fill;
    groupTitle.myHeight = MyLayoutSize.wrap;
    groupTitle.contentEdgeInsets = UIEdgeInsetsMake(PADDING_MEDDLE, PADDING_OUTER, PADDING_MEDDLE, PADDING_OUTER);
    groupTitle.textColor = [UIColor black80];
    groupTitle.font = UIFontMake(TEXT_MEDDLE);
    groupTitle.backgroundColor = [UIColor colorSurface];
    groupTitle.text = R.string.localizable.other;
    [itemContainer addSubview:groupTitle];
    
    //设置
    SuperSettingView *itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.setting click:^(UIView * _Nonnull view) {
        [self closeDrawer];
    }];
    [itemContainer addSubview:itemView];
    
    //深色模式
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.darkMode switchChanged:^(UISwitch * _Nonnull view) {
        //LogDebug(@"night switch changed %d",view.isOn);
    } click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //定时关闭
    itemView = [SuperSettingView smallWithIcon:R.image.shopCart title:R.string.localizable.timedOff click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //个性装扮
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.personDress click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //边听边缓存
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.cacheWhileList click:^(UIView * _Nonnull view) {
        
    }];
    itemView.moreView.text=R.string.localizable.notOpen;
    [itemContainer addSubview:itemView];
    
    //音乐闹钟
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.musicAlarmClock click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //js交互
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.jsTest click:^(UIView * _Nonnull view) {
        [self closeDrawer];
    }];
    [itemContainer addSubview:itemView];
    
}

#pragma mark - 创建控件 关于
-(void)initAboutMenu{
    MyLinearLayout *itemContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    itemContainer.myWidth = MyLayoutSize.fill;
    itemContainer.myHeight = MyLayoutSize.wrap;
    itemContainer.backgroundColor = [UIColor colorDivider];
    [itemContainer radius];
    itemContainer.subviewSpace = 0.5;
    [self.contentContainer addSubview:itemContainer];
    
    //我的客服
    SuperSettingView *itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.myCustomerService click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //分享
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.shareApp click:^(UIView * _Nonnull view) {
        
    }];
    [itemContainer addSubview:itemView];
    
    //关于
    itemView = [SuperSettingView smallWithIcon:R.image.scan title:R.string.localizable.about click:^(UIView * _Nonnull view) {
        [self closeDrawer];
    }];
    [itemContainer addSubview:itemView];
    
}

///退出点击
/// @param sender <#sender description#>
- (void)onPrimaryClick:(QMUIButton *)sender{
    [self.logoutConfirmController show];
}

-(void)onUserClick:(UITapGestureRecognizer *)gestureRecognizer{
    [self closeDrawer];
    [self startController:[LoginHomeController class]];
}

-(void)closeDrawer{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/// 扫描点击
/// @param sender <#sender description#>
-(void)onScanClick:(UIButton *)sender{
    [self closeDrawer];
    
    #if TARGET_IPHONE_SIMULATOR  //模拟器
    [SuperToast showWithTitle:@"模拟器不支持该功能，请在运行到真机测试"];
    #elif TARGET_OS_IPHONE      //真机
//        [self startController:[ScanController class]];
    #endif
    
}

- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [UIImageView new];
        _iconView.myWidth = 30;
        _iconView.myHeight = 30;
        _iconView.image = R.image.defaultAvatar;
        _iconView.clipsToBounds=YES;
        [_iconView smallRadius];
        _iconView.centerYPos.equalTo(@(0));
        
        //图片从中心等比向外面填充，控件没有黑边，但图片可能被裁剪
        _iconView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconView;
}

- (UILabel *)nicknameView{
    if (!_nicknameView) {
        _nicknameView = [UILabel new];
        _nicknameView.myWidth = MyLayoutSize.wrap;
        _nicknameView.myHeight = MyLayoutSize.wrap;
        _nicknameView.text = @"昵称";
        _nicknameView.font = [UIFont systemFontOfSize:16];
        _nicknameView.textColor = [UIColor colorOnBackground];
        _nicknameView.centerYPos.equalTo(@(0));
        _nicknameView.leftPos.equalTo(self.iconView.rightPos).offset(10);
    }
    return _nicknameView;
}

- (QMUIButton *)scanView{
    if (!_scanView) {
        _scanView = [ViewFactoryUtil buttonWithImage:[R.image.scan withTintColor]];
        _scanView.tintColor = [UIColor colorOnBackground];
        _scanView.centerYPos.equalTo(@(0));
        _scanView.rightPos.equalTo(@(0));
        [_scanView addTarget:self action:@selector(onScanClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _scanView;
}

- (SuperDialogController *)logoutConfirmController{
    if (!_logoutConfirmController) {
        _logoutConfirmController=[SuperDialogController new];
        _logoutConfirmController.titleText = R.string.localizable.confirmLogout;
        [_logoutConfirmController setCancelButton:R.string.localizable.superCancel target:nil action:nil];
        [_logoutConfirmController setWarningButton:R.string.localizable.confirm target:self action:@selector(onPrimaryConfirmClick:)];
    }
    return _logoutConfirmController;
}

@end
