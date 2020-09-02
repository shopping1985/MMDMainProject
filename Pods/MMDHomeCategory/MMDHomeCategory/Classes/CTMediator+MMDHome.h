//
//  CTMediator+MMDHome.h
//  MMDHomeCategory
//
//  Created by linxiaoping on 2020/9/1.
//

#import <Foundation/Foundation.h>
#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator(MMDHome)
/**
进入模块主界面
 */
-(UIViewController*)homeViewControllerWithDict:(NSDictionary*)dict;
/**
进入榜单界面
 */
-(UIViewController*)boardViewControllerWithDict:(NSDictionary*)dict;
@end

NS_ASSUME_NONNULL_END
