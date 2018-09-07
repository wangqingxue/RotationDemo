//
//  ViewController.m
//  ShouldRotation
//
//  Created by 王庆学 on 2018/9/7.
//  Copyright © 2018年 qingxue.wang. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
#import "CanRotatedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *baseLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 70, 100, 40)];
    baseLabel.textColor = [UIColor blackColor];
    baseLabel.text = @"第一个页面";
    [self.view addSubview:baseLabel];
    self.navigationItem.title = @"第一个页面";
    
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

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    PushViewController *pushController = [[PushViewController alloc]init];
//    [self.navigationController pushViewController:pushController animated:YES];
//}

- (void)naviPresent{
    PushViewController *pushControlelr = [[PushViewController alloc]init];
    [self.navigationController pushViewController:pushControlelr animated:YES];
}

- (void)btnClick{
    CanRotatedViewController *canPush = [[CanRotatedViewController alloc]init];
    [self.navigationController pushViewController:canPush animated:YES];
}

- (BOOL)shouldAutorotate{
    return NO;
}

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


@end
