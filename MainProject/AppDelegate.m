//
//  AppDelegate.m
//  MainProject
//
//  Created by linxiaoping on 2020/8/24.
//  Copyright © 2020 fjzd. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"
#import "BaseNavigationController.h"

@interface AppDelegate ()

@property (nonatomic, assign) BOOL bInitAPNs;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1.创建窗口
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    //2.设置根控制器
    //self.window.rootViewController = [[MainTabBarController alloc] init];//不要把tabbarcontroller直接作为根视图控制器，解决阿里百川打开手淘或天猫安装界面异常的问题；
    MainTabBarController *tabBarController = [[MainTabBarController alloc] init];
    BaseNavigationController *navRootVC = [[BaseNavigationController alloc] initWithRootViewController:tabBarController];
    navRootVC.title = @"我是根视图导航控制器";
    self.window.rootViewController = navRootVC;

    //3.显示窗口
    [self.window makeKeyAndVisible];
    
    //
    self.launchOptions = launchOptions;
    self.token = @"no token";
    self.bInitAPNs = NO;
    return YES;
}


#pragma mark - UISceneSession lifecycle

//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}


//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
