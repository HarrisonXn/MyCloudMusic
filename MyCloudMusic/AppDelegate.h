//
//  AppDelegate.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/10.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Session.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong,nonatomic) UIWindow *window;

- (void)saveContext;

/// 获取单例对象
+(instancetype)shared;

/// 显示引导界面
-(void)toGuide;

/// 显示主界面
-(void)toMain;

/// 登录了，初始化一些需要登录后才能初始化的服务
-(void)onLogin:(Session *)data;

// 退出时调用
- (void)logout;
@end

