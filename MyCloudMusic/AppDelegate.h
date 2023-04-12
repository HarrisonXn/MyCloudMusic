//
//  AppDelegate.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/10.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong,nonatomic) UIWindow *window;

- (void)saveContext;

/// 获取单例对象
+(instancetype)shared;

/// 显示引导界面
-(void)toGuide;
@end

