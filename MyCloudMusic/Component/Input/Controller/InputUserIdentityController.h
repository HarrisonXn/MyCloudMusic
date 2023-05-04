//
//  InputUserIdentityController.h
//  MyCloudMusic
//  输入用户邮箱，手机号通用界面
//  主要用到手机号登录，找回密码时，输入手机号，输入邮箱
//  根据启动参数区分是那种功能
//  之所以设计为当前界面只是输入，下一个界面才发送验证码，原因是限制发送验证了
//  又更改了输入框的手机号，邮箱
//  Created by 邢世航 on 2023/5/4.
//

#import "BaseTitleController.h"

NS_ASSUME_NONNULL_BEGIN

@interface InputUserIdentityController : BaseTitleController
@property(nonatomic, assign) ListStyle style;
#pragma mark - 启动界面
/// 手机号登录
/// @param controller <#controller description#>
+ (void)startWithPhoneLogin:(UINavigationController *)controller;

/// 启动界面
/// @param controller <#controller description#>
/// @param style <#style description#>
+ (void)start:(UINavigationController *)controller style:(ListStyle)style;
@end


NS_ASSUME_NONNULL_END
