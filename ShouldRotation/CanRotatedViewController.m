//
//  CanRotatedViewController.m
//  ShouldRotation
//
//  Created by 王庆学 on 2018/9/7.
//  Copyright © 2018年 qingxue.wang. All rights reserved.
//

#import "CanRotatedViewController.h"

@interface CanRotatedViewController ()

@end

@implementation CanRotatedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *baseLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 70, 100, 40)];
    baseLabel.textColor = [UIColor blackColor];
    baseLabel.text = @"我是被push的cotroller";
    [self.view addSubview:baseLabel];
    self.navigationItem.title = @"我是被push的cotroller";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.presentingViewController){
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAllButUpsideDown;
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
