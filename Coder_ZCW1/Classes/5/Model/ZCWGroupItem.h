//
//  ZCWGroupItem.h
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/8.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCWGroupItem : NSObject

/** 头部标题 */
@property (strong, nonatomic) NSString * headerTitle;
/** 尾部标题 */
@property (strong, nonatomic) NSString * footerTitle;
/** 组中的行数组 */
@property (strong, nonatomic) NSArray * items;

@end
