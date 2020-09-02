//
//  Target_MMDHomeDispatcher.h
//  MMDHome
//
//  Created by linxiaoping on 2020/9/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_MMDHomeDispatcher : NSObject
/**
进入模块主界面
 */
-(UIViewController*)Action_homeViewControllerWithDict:(NSDictionary *)param;
/**
进入榜单界面
 */
-(UIViewController*)Action_boardViewControllerWithDict:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
