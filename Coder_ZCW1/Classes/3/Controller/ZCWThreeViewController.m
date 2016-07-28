//
//  ZCWThreeViewController.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/7.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWThreeViewController.h"

@interface ZCWThreeViewController ()

@end

@implementation ZCWThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
    UILabel *one = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
    one.center = self.view.center;
    
    one.text = @"第三个ViewController";
    one.textColor = [UIColor darkGrayColor];
    one.textAlignment = NSTextAlignmentCenter;
    one.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:one];
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionRepeat animations:^{
        one.alpha = 0;
        one.center = CGPointMake(self.view.center.x, 60);
        
    } completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
