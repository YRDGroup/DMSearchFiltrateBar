//
//  ViewController.m
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "DMSearchFiltrateBarButton.h"
#import "DMSearchFiltrateBar.h"

#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()
{
    NSInteger number;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"量身推荐";
    
    DMSearchFiltrateBarConfig *barConfig = [[DMSearchFiltrateBarConfig alloc]init];
    barConfig.buttonConfig.barButtonCenterXOffset = -25;
    
    DMSearchFiltrateBar *bar = [[DMSearchFiltrateBar alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, 50) searchFiltrateBarConfig:barConfig];
    bar.barPressedBlock = ^(DMSearchFiltrateBarButton *button, NSInteger selectedButtonIndex, BOOL sameToLastButton) {
        
    };
    [self.view addSubview:bar];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
