//
//  DMSearchFiltrateBarButton.h
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import "DMSearchFiltrateBarButtonConfig.h"

@class DMSearchFiltrateBarButton;

typedef void(^DMSearchFiltrateBarButtonPressedBlock)(DMSearchFiltrateBarButton *button);

@interface DMSearchFiltrateBarButton : UIControl

@property (assign, nonatomic) kDMSearchFiltrateBarStatusImageViewType statusType;


@property (copy, nonatomic) DMSearchFiltrateBarButtonPressedBlock pressedBlock;

- (instancetype)initWithFrame:(CGRect)frame buttonConfig:(DMSearchFiltrateBarButtonConfig *)buttonConfig;

- (void)setSearchButtonTitle:(NSString *)buttonTitle statusType:(kDMSearchFiltrateBarStatusImageViewType)statusType;

@end
