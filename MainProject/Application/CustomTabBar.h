//
//  CustomTabBar.h
//  TabBarAppTemplate
//
//  Created by linxiaoping on 2020/4/6.
//  Copyright © 2020 linxiaoping. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CustomTabBar;
//因为CustomTabBar继承自UITabBar，所以称为CustomTabBar的代理，也必须实现UITabBar的代理协议
@protocol CustomTabBarDelegate<UITabBarDelegate>
@optional
-(void)tabBarDidClickCustomButton:(UITabBar*)tabBar;
@end

@interface CustomTabBar : UITabBar
@property(nonatomic,weak)id<CustomTabBarDelegate> customDelegate;

@end

NS_ASSUME_NONNULL_END
