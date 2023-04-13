//
//  AppDelegate.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/10.
//

#import "AppDelegate.h"
#import "SplashViewController.h"
#import "GuideController.h"
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

-(void)setRootViewController:(UIViewController *)controller{
    self.window.rootViewController = controller;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self initNetwork];
    
    SplashViewController *splashVC = [[SplashViewController alloc]init];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = splashVC;
    [self.window makeKeyAndVisible];
    return YES;
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


#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
