//
//  MineViewController.m
//  TabBarAppTemplate
//
//  Created by linxiaoping on 2020/3/8.
//  Copyright © 2020 linxiaoping. All rights reserved.
//

#import "MineViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController

#pragma mark life cycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark override
- (BOOL)hasBackButton{
    return NO;
}
- (BOOL)showNavigationBar{
    return NO;
}

@end
