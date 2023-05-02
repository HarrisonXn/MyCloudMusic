//
//  AppDelegate.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/10.
//

#import "AppDelegate.h"
#import "SplashViewController.h"
#import "GuideController.h"
#import "MainController.h"
#import "LoginStatusChangedEvent.h"
#import "Session.h"
#import "LoginHomeController.h"
//腾讯开源的偏好存储框架
#import <MMKV/MMKV.h>
@interface AppDelegate ()

@end

@implementation AppDelegate

+(instancetype)shared{
  return (AppDelegate *)UIApplication.sharedApplication.delegate;
}

/// 显示引导界面
-(void)toGuide{
    GuideController *controller = [GuideController new];
    [self setRootViewController:controller];
}

/// 显示主界面
-(void)toMain{
    MainController *controller = [MainController new];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
        [self setRootViewController:navigationController];
}

-(void)setRootViewController:(UIViewController *)controller{
    self.window.rootViewController = controller;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self initNetwork];
    
    [self initMMKV];
    
    SplashViewController *splashVC = [[SplashViewController alloc]init];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = splashVC;
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)initMMKV{
    [MMKV initializeMMKV:nil];
}

/// 初始化网络框架
- (void)initNetwork{
  #ifdef DEBUG
      //开启日志打印 默认打开(Debug级别)
      [MSNetwork openLog];
  #endif

  //最终完整Url为[NSString stringWithFormat:@“%@%@”,_baseURL,URL]，
  [MSNetwork setBaseURL:ENDPOINT];

  //设置全局请求参数
  //NSDictionary *dic = @{@"accountToken":@{@"clientType":@"",@"tokenKey":@""}};
  //[MSNetwork setBaseParameters:dic];

  //设置网络请求超时时间
  [MSNetwork setRequestTimeoutInterval:10.0f];

  //设置网络请求头
  //可一次设置多个也可单独设置
  //[MSNetwork setHeadr:@{@"api-version":@"v1.0.0"}];
  //[MSNetwork setValue:@"9" forHTTPHeaderField:@"fromType"];

  //请求数据为json
  [MSNetwork setRequestSerializer:MSRequestSerializerJSON];
}

-(void)onLogin:(Session *)data{
    //关闭登陆相关界面
   UINavigationController *navigationController=self.window.rootViewController;
   NSArray *vcs = navigationController.viewControllers;
   
   NSMutableArray *newVCS = [NSMutableArray array];
   
   for (int i=0; i < [vcs count]; i++) {
       UIViewController *it = [vcs objectAtIndex:i];
       if ([it isKindOfClass:[LoginHomeController class]]) {
           break;
       }
       [newVCS addObject:[vcs objectAtIndex:i]];
   }
   
   [navigationController setViewControllers:newVCS animated:YES];
       

    [self loginStatusChanged];
}

- (void)logout{
    [self logoutSilence];
}

/// 静默退出
- (void)logoutSilence{
    //清除登录相关信息
    [PreferenceUtil logout];
    
    [self loginStatusChanged];
}

- (void)loginStatusChanged{
    LoginStatusChangedEvent *event = [[LoginStatusChangedEvent alloc] init];
    [QTEventBus.shared dispatch:event];
}
@end
