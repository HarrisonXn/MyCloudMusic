//
//  TermServiceDialogController.h
//  MyCloudMusic
//  服务条款和隐私协议对话框
//  Created by 邢世航 on 2023/4/11.
//

#import "BaseController.h"
//腾讯开源的UI框架，提供了很多功能，例如：圆角按钮，空心按钮，TextView支持placeholder
#import <QMUIKit/QMUIKit.h>
//提供类似Android中更高层级的布局框架
#import <MyLayout/MyLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface TermServiceDialogController : BaseController
@property (nonatomic, strong) QMUIModalPresentationViewController *modalController;

@property (nonatomic, strong) MyBaseLayout *rootContainer;
@property (nonatomic, strong) MyBaseLayout *contentContainer;

/// 标题控件
@property (nonatomic, strong) UILabel *titleView;

/// 内容
@property (nonatomic, strong) UITextView *textView;

@property (nonatomic, strong) QMUIButton *primaryButton;
@property (nonatomic, strong) QMUIButton *disagreeButton;
/// 显示
-(void)show;

/// 隐藏
-(void)hide;
@end

NS_ASSUME_NONNULL_END
