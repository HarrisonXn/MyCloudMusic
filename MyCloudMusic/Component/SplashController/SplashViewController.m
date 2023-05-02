//
//  SplashViewController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/10.
//

#import "SplashViewController.h"
#import "SuperDateUtil.h"
//第三方框架
#import <MyLayout.h>
#import "R.h"
#import "UIColor+Config.h"
#import "UIColor+Theme.h"
#import "TermServiceDialogController.h"
#import "DefaultPreferenceUtil.h"
#import "GuideController.h"
#import "LoginHomeController.h"
#import "AppDelegate.h"

@interface SplashViewController ()
@property (nonatomic, strong) TermServiceDialogController *dialogController;
@end

@implementation SplashViewController

- (void)initViews{
    [super initViews];
    
    //根容器
    [self initRelativeLayoutSafeArea];
    
    //Logo
    UIImageView *logoView = [UIImageView new];
    logoView.image = [UIImage imageNamed:@"Logo"];
    logoView.myWidth = 110;
    logoView.myHeight = 110;
    logoView.myCenterX = 0;
    logoView.myCenterY = 0;
    [self.container addSubview:logoView];
    
    //版权
    NSInteger year=[SuperDateUtil currentYear];
    
    UILabel *agrementView = [UILabel new];
    agrementView.myWidth=MyLayoutSize.wrap;
    agrementView.myHeight=20;
    agrementView.myBottom=20;
    agrementView.myCenterX=0;
    agrementView.font=[UIFont systemFontOfSize:12];
    agrementView.textColor=[UIColor black80];
//    NSString *result=NSLocalizedString(@"Copyright", @"");
//    result=[NSString stringWithFormat:result,year];
    //使用R.objc框架
    agrementView.text=[R.string.localizable copyright:year];
    [self.container addSubview:agrementView];
    
    //logo
    UIImageView *logoView2=[UIImageView new];
    logoView2.myWidth=188;
    logoView2.myHeight=31;
    logoView2.bottomPos.equalTo(agrementView.topPos).offset(20);
    logoView2.myCenterX=0;
    logoView2.image=[UIImage imageNamed:@"SplashLogo"];
    logoView2.contentMode = UIViewContentModeScaleAspectFit;
    [self.container addSubview:logoView2];
}

- (void)initDatum{
    [super initDatum];

    if ([DefaultPreferenceUtil isAcceptTermsServiceAgreement]) {
        //已经同意了用户协议
        [self prepareNext];
    } else {
        [self showTermsServiceAgreementDialog];
    }
}

-(void)prepareNext{
    [self performSelector:@selector(next) withObject:nil afterDelay:3];
//    [self next];
}

- (void)next{
    [AppDelegate.shared toGuide];
}

/// 显示同意服务条款对话框
- (void)showTermsServiceAgreementDialog{
    [self.dialogController show];
}

/// 主按钮点击
/// @param sender <#sender description#>
-(void)primaryClick:(UIButton *)sender{
    [self.dialogController hide];
    [DefaultPreferenceUtil setAcceptTermsServiceAgreement:YES];
    
    
    [AppDelegate.shared toGuide];
}

/// 返回控制器，懒加载方式
- (TermServiceDialogController *)dialogController{
    if (!_dialogController) {
        _dialogController=[TermServiceDialogController new];
        _dialogController.titleView.text = R.string.localizable.termServicePrivacy;
        [_dialogController.primaryButton addTarget:self action:@selector(primaryClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _dialogController;
}

@end
