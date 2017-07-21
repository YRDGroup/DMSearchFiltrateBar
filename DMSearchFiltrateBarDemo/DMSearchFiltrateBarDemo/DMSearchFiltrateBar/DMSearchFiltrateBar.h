//
//  DMSearchFiltrateBar.h
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMSearchFiltrateBarConfig.h"

@class DMSearchFiltrateBarButton;
typedef void(^DMSearchFiltrateBarPressedBlock)(DMSearchFiltrateBarButton *button,NSInteger selectedButtonIndex,BOOL sameToLastButton);

@interface DMSearchFiltrateBar : UIView

- (instancetype)initWithFrame:(CGRect)frame searchFiltrateBarConfig:(DMSearchFiltrateBarConfig *)barConfig;

@property (copy, nonatomic) DMSearchFiltrateBarPressedBlock barPressedBlock;

//变更当前的title，并使barButton 置为 kDMSearchFiltrateBarStatusImageViewTypeSelectedDown 状态;
- (void)setBarButtonTitle:(NSString *)title;
@end
