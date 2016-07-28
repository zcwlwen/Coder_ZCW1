//
//  ZCWSettingItem.h
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/8.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCWSettingItem : NSObject

@property (strong, nonatomic) NSString * title;/**< 标题 */

+ (instancetype)itemWithtitle:(NSString *)title;/**< 设置标题值 类方法 */

@end
