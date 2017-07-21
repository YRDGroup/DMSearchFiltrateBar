//
//  DMSearchFiltrateBar.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMSearchFiltrateBar.h"
#import "DMSearchFiltrateBarButton.h"

#define kDMDefaultTag 100

@interface DMSearchFiltrateBar ()

@property (strong,nonatomic)NSMutableArray *searchFiltrateBarButtons;

@property (assign,nonatomic)NSInteger selectedButtonIndex;

@property (strong,nonatomic)DMSearchFiltrateBarButton *currentBarButton;

@property (strong,nonatomic)DMSearchFiltrateBarConfig *barConfig;

@end

@implementation DMSearchFiltrateBar

- (NSInteger)selectedButtonIndex
{
    return self.currentBarButton.tag-kDMDefaultTag;
}

- (instancetype)initWithFrame:(CGRect)frame searchFiltrateBarConfig:(DMSearchFiltrateBarConfig *)barConfig
{
    if (self = [super initWithFrame:frame]) {
        
        _barConfig = barConfig;
        
        DMSearchFiltrateBarButton *tempBarButton;
        for (int i = 0; i < _barConfig.numberOfButtons;i++) {
            DMSearchFiltrateBarButton *barButton = [[DMSearchFiltrateBarButton alloc]initWithFrame:CGRectZero buttonConfig:barConfig.buttonConfig];
            barButton.tag = kDMDefaultTag + i;
            [self addSubview:barButton];
            
            //默认选中
            if (i == _barConfig.defaultSelectedIndex) {
                [barButton setStatusType:kDMSearchFiltrateBarStatusImageViewTypeSelectedDown];
                _currentBarButton = barButton;
            }
            
            __weak typeof(self) weakSelf = self;
            barButton.pressedBlock = ^(DMSearchFiltrateBarButton *button) {
                //是否是相同的button
                BOOL sameToLastButton = (button == _currentBarButton);
                if (!sameToLastButton) {
                    //不相同的
                    [_currentBarButton setStatusType:kDMSearchFiltrateBarStatusImageViewTypeNormalDown];
                    _currentBarButton = button;
                    [_currentBarButton setStatusType:kDMSearchFiltrateBarStatusImageViewTypeSelectedTop];
                } else {
                    //相同
                    if (_currentBarButton.statusType == kDMSearchFiltrateBarStatusImageViewTypeSelectedDown) {
                        _currentBarButton.statusType = kDMSearchFiltrateBarStatusImageViewTypeSelectedTop;
                    } else if (_currentBarButton.statusType == kDMSearchFiltrateBarStatusImageViewTypeSelectedTop){
                        _currentBarButton.statusType = kDMSearchFiltrateBarStatusImageViewTypeSelectedDown;
                    }
                }
                if (_barPressedBlock) {
                    _barPressedBlock(button,weakSelf.selectedButtonIndex,sameToLastButton);
                }
            };
            if (i == 0) {
                [barButton mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(self).offset(0);
                    make.centerY.equalTo(self);
                    make.top.equalTo(self);
                    make.bottom.equalTo(self);
                }];
            } else if(i == _barConfig.numberOfButtons-1) {
                [barButton mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.right.equalTo(self);
                    make.left.equalTo(tempBarButton.mas_right);
                    make.centerY.equalTo(tempBarButton);
                    make.height.equalTo(tempBarButton);
                    make.width.equalTo(tempBarButton);
                }];
            } else {
                [barButton mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(tempBarButton.mas_right);
                    make.centerY.equalTo(tempBarButton);
                    make.height.equalTo(tempBarButton);
                    make.width.equalTo(tempBarButton);
                }];
            }
            tempBarButton = barButton;
            [barButton layoutIfNeeded];
            }
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
