//
//  CTMediator+MMDHome.m
//  MMDHomeCategory
//
//  Created by linxiaoping on 2020/9/1.
//

#import "CTMediator+MMDHome.h"

@implementation CTMediator(MMDHome)
#define MMDHomeCategory_Taget @"MMDHomeDispatcher"

-(UIViewController *)homeViewControllerWithDict:(NSDictionary *)dict{
    
    NSString* func_name = [NSString stringWithFormat:@"%s",__FUNCTION__];
    return [self performTarget:MMDHomeCategory_Taget action:@"homeViewControllerWithDict" params:dict shouldCacheTarget:YES];
}

-(UIViewController *)boardViewControllerWithDict:(NSDictionary *)dict{
    
    return [self performTarget:MMDHomeCategory_Taget action:@"boardViewControllerWithDict" params:dict shouldCacheTarget:YES];
}
@end
