//
//  ZCWSettingItem.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/8.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWSettingItem.h"


@implementation ZCWSettingItem

+ (instancetype)itemWithtitle:(NSString *)title{
    ZCWSettingItem *item = [[ZCWSettingItem alloc]init];
    item.title = title;
    return item;
}

@end
