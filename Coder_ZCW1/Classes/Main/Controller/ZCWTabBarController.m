//
//  ZCWTabBarController.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/7.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWTabBarController.h"
#import "ZCWNavigationController.h"
#import "ZCWOneViewController.h"
#import "ZCWTwoViewController.h"
#import "ZCWThreeViewController.h"
#import "ZCWFourViewController.h"
#import "ZCWFiveController.h"

@interface ZCWTabBarController ()

@end

@implementation ZCWTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UITabBarController.tabBar.selectedImageTintColor = [UIColor orangeColor];
    self.tabBar.tintColor = [UIColor blackColor];//设置TabBar选中颜色
    [self setAllChildViewController];
}
- (void)setAllChildViewController{
    
    ZCWOneViewController *oneVC = [[ZCWOneViewController alloc]init];
    [self setChildViewController:oneVC image:[UIImage imageNamed:@"icon_home"] title:@"首页"];
    
    ZCWTwoViewController *twoVC = [[ZCWTwoViewController alloc]init];
    [self setChildViewController:twoVC image:[UIImage imageNamed:@"icon_home"] title:@"照片"];
    
    ZCWThreeViewController *threeVC = [[ZCWThreeViewController alloc]init];
    [self setChildViewController:threeVC image:[UIImage imageNamed:@"icon_home"] title:@"视频"];
    
    ZCWFourViewController *fourVC = [[ZCWFourViewController alloc]init];
    [self setChildViewController:fourVC image:[UIImage imageNamed:@"icon_home"] title:@"设置"];
    
    ZCWFiveController *fiveVC = [[ZCWFiveController alloc]init];
    [self setChildViewController:fiveVC image:[UIImage imageNamed:@"icon_home"] title:@"测试"];
}

- (void)setChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
    navC.title = title;
    navC.tabBarItem.image = image;
    navC.navigationBar.backgroundColor = [UIColor lightGrayColor];
    viewController.navigationItem.title = title;
    [self addChildViewController:navC];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
