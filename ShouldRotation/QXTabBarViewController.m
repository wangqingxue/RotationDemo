//
//  QXTabBarViewController.m
//  ShouldRotation
//
//  Created by 王庆学 on 2018/9/7.
//  Copyright © 2018年 qingxue.wang. All rights reserved.
//

#import "QXTabBarViewController.h"
#import "ViewController.h"
#import "NaviViewController.h"
#import "QXNavigationViewController.h"

@interface QXTabBarViewController ()

@end

@implementation QXTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setInitTabBar];
}

- (void)setInitTabBar{
    NSArray *baseArray = @[@"ViewController",@"NaviViewController"];
    for (NSInteger i = 0; i < baseArray.count; i++){
        Class cls = NSClassFromString(baseArray[i]);
        QXNavigationViewController *naviController = [[QXNavigationViewController alloc]initWithRootViewController:[[cls alloc]init]];
        naviController.tabBarItem = [[UITabBarItem alloc]initWithTitle:baseArray[i] image:nil tag:nil];
        [self addChildViewController:naviController];
    }
}

- (BOOL)shouldAutorotate{
    return [self.selectedViewController shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
