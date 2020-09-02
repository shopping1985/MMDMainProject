//
//  Target_MMDHomeDispatcher.m
//  MMDHome
//
//  Created by linxiaoping on 2020/9/1.
//

#import "Target_MMDHomeDispatcher.h"
#import "../home/HomeViewController.h"
#import "../rank/ChinaProductViewController.h"

@implementation Target_MMDHomeDispatcher

-(UIViewController *)Action_homeViewControllerWithDict:(NSDictionary *)param{
    
    HomeViewController* vc = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:MMDHome_Bundle];
    return vc;
}

-(UIViewController *)Action_boardViewControllerWithDict:(NSDictionary *)param{
    
    ChinaProductViewController* vc = [[ChinaProductViewController alloc] initWithNibName:@"ChinaProductViewController" bundle:MMDHome_Bundle];
    return vc;
}
@end
