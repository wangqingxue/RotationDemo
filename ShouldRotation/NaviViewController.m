//
//  NaviViewController.m
//  ShouldRotation
//
//  Created by 王庆学 on 2018/9/7.
//  Copyright © 2018年 qingxue.wang. All rights reserved.
//

#import "NaviViewController.h"
#import "PushViewController.h"
#import "CanRotatedViewController.h"

@interface NaviViewController ()

@end

@implementation NaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *baseLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 70, 100, 40)];
    baseLabel.textColor = [UIColor blackColor];
    baseLabel.text = @"navigationController";
    [self.view addSubview:baseLabel];
    self.navigationItem.title = @"第三个页面";
    
    UIButton *buttonBack = [[UIButton alloc]initWithFrame:CGRectMake(5, 200, 100, 40)];
    buttonBack.backgroundColor = [UIColor redColor];
    [buttonBack setTitle:@"可以旋转" forState:UIControlStateNormal];
    [buttonBack addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonBack];
    
    UIButton *naviPresent = [[UIButton alloc]initWithFrame:CGRectMake(5, 110, 100, 40)];
    naviPresent.backgroundColor = [UIColor redColor];
    [naviPresent setTitle:@"不可以旋转" forState:UIControlStateNormal];
    [naviPresent addTarget:self action:@selector(naviPresent) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:naviPresent];
}

- (void)viewWillAppear:(BOOL)animated{
    NSNumber * value = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
}

- (void)naviPresent{
    PushViewController *pushControlelr = [[PushViewController alloc]init];
    [self presentViewController:pushControlelr animated:YES completion:nil];
}

- (void)btnClick{
    CanRotatedViewController *canPush = [[CanRotatedViewController alloc]init];
    [self presentViewController:canPush animated:YES completion:nil];
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    PushViewController *pushControlelr = [[PushViewController alloc]init];
//    [self presentViewController:pushControlelr animated:YES completion:nil];
//}
//
//- (BOOL)shouldAutorotate{
//    return NO;
//}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
//    return NO;
//}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
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
