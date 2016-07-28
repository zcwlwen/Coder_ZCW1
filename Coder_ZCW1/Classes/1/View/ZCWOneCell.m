//
//  ZCWOneCell.m
//  Coder_ZCW1
//
//  Created by 张朝伟 on 16/7/20.
//  Copyright © 2016年 zcwlwen. All rights reserved.
//

#import "ZCWOneCell.h"
#import "UIImageView+WebCache.h"
#import "ZCWOneModel.h"

@interface ZCWOneCell()

@property (weak ,nonatomic)IBOutlet UIImageView *oneImage;
@property (weak ,nonatomic)IBOutlet UILabel *oneTitle;
@property (weak ,nonatomic)IBOutlet UILabel *oneDescribe;

@end

@implementation ZCWOneCell

- (void)setModel:(ZCWOneModel *)model{
    _model = model;
    
    [self.oneImage sd_setImageWithURL:[NSURL URLWithString:model.pic]];
    self.oneTitle.text = model.title;
    self.oneDescribe.text = model.describe;
    
}

@end
