//
//  ZCWFiveController.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/8.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWFiveController.h"
#import "ZCWGroupItem.h"
#import "ZCWSettingItem.h"


#define  Color(a,b,c)  [UIColor colorWithRed:a/255.0 green:b/255.0 blue:c/255.0 alpha:1.0]
@interface ZCWFiveController ()

@property (nonatomic,strong) NSMutableArray *groups;


@end

@implementation ZCWFiveController
- (NSMutableArray *)groups{
    if (!_groups) {
        _groups = [NSMutableArray array];
        
    }
    return _groups;
}

- (instancetype)init{
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = Color(220, 220, 220);
    [self setGroup1];
    [self setGroup2];
    [self setGroup3];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)setGroup1{
    ZCWGroupItem *group = [[ZCWGroupItem alloc]init];
    
    ZCWSettingItem *item  = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item1 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    group.items = @[item,item1];
    [self.groups addObject:group];
}
- (void)setGroup2{
    ZCWGroupItem *group = [[ZCWGroupItem alloc]init];
    
    ZCWSettingItem *item  = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item1 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item2 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item3 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    group.items = @[item,item1,item2,item3];
    [self.groups addObject:group];
}
- (void)setGroup3{
    ZCWGroupItem *group = [[ZCWGroupItem alloc]init];
    
    ZCWSettingItem *item  = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item1 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    ZCWSettingItem *item2 = [ZCWSettingItem itemWithtitle:@"这是测试哈哈"];
    group.items = @[item,item1,item2];
    [self.groups addObject:group];
}

#pragma mark TableView Data Sourse
/**
 *  返回有多少个组
 *
 *  @param tableView TableView
 *
 *  @return 多少组
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.groups.count;
}
/**
 *  返回每组有多少行
 *
 *  @param tableView TableView
 *  @param section   组数
 *
 *  @return 每组中item个数（行数）
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    ZCWGroupItem *group = self.groups[section];
    return group.items.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    ZCWGroupItem *group = self.groups[indexPath.section];
    
    ZCWSettingItem *item = group.items[indexPath.row];
    
    cell.textLabel.text = item.title;
    return cell;
    
}
/**
 *  系统默认的设置section header的方法样式不能改变
 *
 *  @param tableView tableview
 *  @param section   section
 *
 *  @return header名称
 */
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section ==0) {
        return @"测试1";
    }else if (section ==1) {
        return @"测试2";
    }else if (section ==2) {
        return @"测试3";
    }
    return @"";
}
/**
 *  自定义header样式
 *
 *  @param tableView tableView
 *  @param section   section
 *
 *  @return HeaderView
 */
//- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    UIView* myView = [[UIView alloc] init];
//    myView.backgroundColor = [UIColor clearColor];
//    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 200, 22)];
//    titleLabel.textColor=[UIColor whiteColor];
//    titleLabel.backgroundColor = [UIColor clearColor];
//    
//    if (section == 0){
//        titleLabel.text = @"本机设备";
//    }
//    else if (section == 1)
//    {
//        titleLabel.text = @"信息";
//    }
//    else
//    {
//        titleLabel.text = @"设置";
//    }
//    [myView addSubview:titleLabel];
//    
//    return myView;
//    
//}


@end
