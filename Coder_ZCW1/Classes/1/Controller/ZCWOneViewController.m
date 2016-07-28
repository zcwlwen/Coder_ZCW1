//
//  ZCWOneViewController.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/7.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWOneViewController.h"
#import "ZCWOneCell.h"
#import "ZCWOneModel.h"
#import "AFNetworking.h"
#import "MJExtension.h"

@interface ZCWOneViewController ()

@property (strong , nonatomic)NSMutableArray *models;

@end

@implementation ZCWOneViewController

#pragma mark - 全局常量
// 发送请求URL
static NSString * const ZCWRequestURL = @"http://apis.baidu.com/txapi/weixin/wxhot";
// 重用cell标识符
static NSString * const ZCWCellID = @"cell";


- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%lu",(unsigned long)self.models.count);
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.rowHeight = 100;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ZCWOneCell class]) bundle:nil] forCellReuseIdentifier:ZCWCellID];
    
}

- (void)loadData{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"apikey"]= @"26280f2483eadcccab270e7e6a174bb2";
    
    __weak typeof(self) weakSelf = self;
    [[AFHTTPSessionManager manager] GET:ZCWRequestURL parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        NSLog(@"请求成功");
        
        // 利用MJExtension框架进行字典转模型
        weakSelf.models = [ZCWOneModel objectArrayWithKeyValuesArray:responseObject[@"newslist"]];
        // 刷新数据（若不刷新数据会显示不出）
        [weakSelf.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        NSLog(@"请求失败 原因：%@",error);
    }];
}
#pragma mark - UITableviewDatasource 数据源方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.models.count;
    NSLog(@"%lu",(unsigned long)self.models.count);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ZCWOneCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.model = self.models[indexPath.row];
    
    return cell;
}

#pragma mark - UITableviewDelegate 代理方法

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    // 点击了第indexPath.row行Cell所做的操作
    NSLog(@"%lu",(unsigned long)self.models.count);
}





//- (void)viewWillAppear:(BOOL)animated{
//    UILabel *one = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
//    one.center = self.view.center;
//    
//    one.text = @"第一个ViewController";
//    one.textColor = [UIColor darkGrayColor];
//    one.textAlignment = NSTextAlignmentCenter;
//    one.font = [UIFont systemFontOfSize:20];
//    [self.view addSubview:one];
//    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionRepeat animations:^{
//        one.alpha = 0.1;
//        
//    } completion:nil];
//}



@end
