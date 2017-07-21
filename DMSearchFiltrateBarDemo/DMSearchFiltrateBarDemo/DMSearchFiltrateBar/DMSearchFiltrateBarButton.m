//
//  DMSearchFiltrateBarButton.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMSearchFiltrateBarButton.h"

@interface DMSearchFiltrateBarButton ()

//箭头状态展示
@property (strong, nonatomic) UIImageView *statusImageView;

@property (strong, nonatomic) UILabel *choosedtitleLabel;

@property (strong,nonatomic)DMSearchFiltrateBarButtonConfig *buttonConfig;

@end

@implementation DMSearchFiltrateBarButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self statusImageView];
    [self choosedtitleLabel];
    
    [self addTarget:self action:@selector(dm_buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (instancetype)initWithFrame:(CGRect)frame buttonConfig:(DMSearchFiltrateBarButtonConfig *)buttonConfig
{
    if (self = [super initWithFrame:frame]) {
        
        _buttonConfig = buttonConfig;
        [self statusImageView];
        [self choosedtitleLabel];
        [self addTarget:self action:@selector(dm_buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self setSearchButtonTitle:@"未命名" statusType:kDMSearchFiltrateBarStatusImageViewTypeNormalDown];
    }
    
    return self;
}

- (void)dm_buttonPressed:(DMSearchFiltrateBarButton *)button
{
    if (self.pressedBlock) {
        self.pressedBlock(button);
    }
}

//初始化的时候使用
- (void)setSearchButtonTitle:(NSString *)buttonTitle statusType:(kDMSearchFiltrateBarStatusImageViewType)statusType
{
    self.choosedtitleLabel.text = buttonTitle;
    self.statusType = statusType;
}

//状态变更
- (void)setStatusType:(kDMSearchFiltrateBarStatusImageViewType)statusType
{
    _statusType = statusType;
    switch (statusType) {
        case kDMSearchFiltrateBarStatusImageViewTypeNormalDown:
        {
            self.choosedtitleLabel.textColor = _buttonConfig.defaultTitleColor;
        }
            break;
        case kDMSearchFiltrateBarStatusImageViewTypeSelectedTop:
        case kDMSearchFiltrateBarStatusImageViewTypeSelectedDown:
        {
            self.choosedtitleLabel.textColor = _buttonConfig.selectedTitleColor;
        }
            break;
    }
    self.statusImageView.image = [UIImage imageNamed:_buttonConfig.statusImages[statusType]];
}

- (UILabel *)choosedtitleLabel
{
    if (!_choosedtitleLabel) {
        _choosedtitleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _choosedtitleLabel.textColor = _buttonConfig.defaultTitleColor;
        _choosedtitleLabel.textAlignment = _buttonConfig.textAlignment;
        _choosedtitleLabel.font = _buttonConfig.font;
        [self addSubview:_choosedtitleLabel];
        [_choosedtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.centerX.equalTo(self).offset(_buttonConfig.barButtonCenterXOffset);
            make.left.equalTo(self).offset(0);
        }];
    }
    return _choosedtitleLabel;
    
}

- (UIImageView *)statusImageView
{
    if (!_statusImageView) {
        _statusImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:_buttonConfig.statusImages[kDMSearchFiltrateBarStatusImageViewTypeNormalDown]]];
        _statusImageView.userInteractionEnabled = YES;
        [self addSubview:_statusImageView];
        [_statusImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.left.equalTo(self.choosedtitleLabel.mas_right).offset(_buttonConfig.spaceBetweenTitleAndImage);
            
        }];
    }
    return _statusImageView;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
