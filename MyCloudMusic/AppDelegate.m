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
    SplashViewController *splashVC = [[SplashViewController alloc]init];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = splashVC;
    [self.window makeKeyAndVisible];
    return YES;
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
