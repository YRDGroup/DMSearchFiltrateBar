//
//  DMSearchFiltrateBarButtonConfig.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMSearchFiltrateBarConfig.h"

@implementation DMSearchFiltrateBarConfig

- (instancetype)init
{
    if (self = [super init]) {
        self.numberOfButtons = 3;
        self.defaultSelectedIndex = 0;
        self.buttonConfig = [[DMSearchFiltrateBarButtonConfig alloc]init];
    }
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
