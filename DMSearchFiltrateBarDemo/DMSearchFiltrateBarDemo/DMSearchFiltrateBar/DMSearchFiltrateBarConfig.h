//
//  DMSearchFiltrateBarButtonConfig.h
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMSearchFiltrateBarButtonConfig.h"

@interface DMSearchFiltrateBarConfig : NSObject

@property (assign,nonatomic)NSInteger numberOfButtons;

@property (assign,nonatomic)NSInteger defaultSelectedIndex;

@property (strong,nonatomic)DMSearchFiltrateBarButtonConfig *buttonConfig;
@end
