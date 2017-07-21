//
//  DMSearchFiltrateDataPanelView.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "DMSearchFiltrateDataPanelView.h"

@interface DMSearchFiltrateDataPanelView ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation DMSearchFiltrateDataPanelView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self =  [[[NSBundle mainBundle] loadNibNamed:@"DMSearchFiltrateDataPanelView" owner:self options:nil] firstObject];
        self.frame = frame;
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
