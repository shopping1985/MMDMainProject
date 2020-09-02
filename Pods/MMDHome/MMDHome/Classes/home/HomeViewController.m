//
//  HomeViewController.m
//  MMDHome
//
//  Created by linxiaoping on 2020/9/1.
//

#import "HomeViewController.h"
#import "../rank/ChinaProductViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnGotoRank:(id)sender {
    ChinaProductViewController* vc = [[ChinaProductViewController alloc] initWithNibName:@"ChinaProductViewController" bundle:MMDHome_Bundle];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
