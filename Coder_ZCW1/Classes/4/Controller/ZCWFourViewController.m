//
//  ZCWFourViewController.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/7.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWFourViewController.h"

@interface ZCWFourViewController ()

@property (nonatomic ,strong)UILabel *label;

@end

@implementation ZCWFourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _label = [[UILabel alloc]init];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
    _label.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    _label.center = self.view.center;
    
    _label.text = @"第四个ViewController";
    _label.textColor = [UIColor darkGrayColor];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:_label];
    [UIView animateWithDuration:1.0 delay:0.5 usingSpringWithDamping:0.2 initialSpringVelocity:5 options:UIViewAnimationOptionRepeat animations:^{
        _label.alpha = 1;
        _label.center = CGPointMake(self.view.center.x, 500);
    } completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
