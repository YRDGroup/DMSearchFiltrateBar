//
//  DMSearchFiltrateBarButtonConfig.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMSearchFiltrateBarButtonConfig.h"

@implementation DMSearchFiltrateBarButtonConfig

- (instancetype)init
{
    if (self = [super init]) {
        
        self.barButtonCenterXOffset = -15;
        self.spaceBetweenTitleAndImage = 5;
        self.defaultTitleColor = [UIColor blackColor];
        self.selectedTitleColor = [UIColor blueColor];
        self.font = [UIFont systemFontOfSize:14];
        self.textAlignment = NSTextAlignmentRight;
        self.lineBreakMode = NSLineBreakByWordWrapping;
        self.statusImages = @[@"searchloan_normal",@"searchloan_selectedDown",@"searchloan_show"];
    }
    return self;
}

@end
