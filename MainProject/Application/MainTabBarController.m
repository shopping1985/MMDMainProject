//
//  MainTabBarController.m
//  TabBarAppTemplate
//
//  Created by linxiaoping on 2020/3/8.
//  Copyright © 2020 linxiaoping. All rights reserved.
//

#import "MainTabBarController.h"
#import "BaseNavigationController.h"
#import "CustomTabBar.h"
#import "MineViewController.h"
#import <CTMediator+MMDHome.h>
@interface MainTabBarController ()<CustomTabBarDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 1.初始化子控制器
    UIViewController * home = [[CTMediator sharedInstance] homeViewControllerWithDict:@{@"name":@"首页"}];
    [self addChildVC:home title:@"首页" normalImage:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
//    DiscoveryViewController *discovery = [[DiscoveryViewController alloc] init];
//    [self addChildVC:discovery title:@"发现" normalImage:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
//    MessageViewController *message = [[MessageViewController alloc] init];
//    [self addChildVC:message title:@"消息" normalImage:@"tabbar_message" selectedImage:@"tabbar_message_selected"];
    MineViewController *mine = [[MineViewController alloc] init];
    [self addChildVC:mine title:@"我" normalImage:@"tabbar_mine" selectedImage:@"tabbar_mine_selected"];
    
    // 2.更换系统自带的tabbar,由于tabbar是realonly，因此使用KVC来重写
    //CustomTabBar *tabBar = [[CustomTabBar alloc] init];
    //tabBar.customDelegate = self;
    //[self setValue:tabBar forKey:@"tabBar"];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}
/**
*  添加一个子控制器
*
*  @param childVc       子控制器
*  @param title         标题
*  @param image         图片
*  @param selectedImage 选中的图片
*/
-(void)addChildVC:(UIViewController*)childVc title:(NSString*)title normalImage:(NSString*)image selectedImage:(NSString*)selectedImage{
    
    //设置子控制器的文字
    childVc.title = title;//同时设置tabbar和navigationbar的文字
    //设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置文字样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = UIColor.blackColor;
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = UIColor.redColor;
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    //给子控制器包装一个导航控制器
    BaseNavigationController *navController = [[BaseNavigationController alloc] initWithRootViewController:childVc];
    //添加为tabbarviewcontroller的子控制器
    [self addChildViewController:navController];
}
#pragma mark CustomTabBarDelegate
-(void)tabBarDidClickCustomButton:(UITabBar *)tabBar{
    
}
@end
