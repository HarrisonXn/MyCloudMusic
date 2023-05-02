//
//  BaseLoginController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "BaseLoginController.h"
#import "LoginStatusChangedEvent.h"
#import "AppDelegate.h"
#import "Session.h"
#import "User.h"
@interface BaseLoginController ()

@end

@implementation BaseLoginController

-(void)login:(User *)data{
    //设备id，就是谁谁的iPhone 这样的名称
    [data setDevice:[UIDevice currentDevice].name];

    [[DefaultRepository shared] loginWithController:self data:data success:^(BaseResponse * _Nonnull baseResponse, id  _Nonnull result) {
            [self onLogin:result];
        }];
}

-(void)onLogin:(Session *)data{
    //保存登录信息
    [PreferenceUtil setSession:data.session];
    [PreferenceUtil setUserId:data.userId];
    [PreferenceUtil setChatSession:data.chatToken];

    [[AppDelegate shared] onLogin:data];

}

@end
