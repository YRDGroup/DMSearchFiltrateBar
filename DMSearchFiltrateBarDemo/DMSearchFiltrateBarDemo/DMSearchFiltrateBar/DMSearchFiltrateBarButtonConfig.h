//
//  DMSearchFiltrateBarButtonConfig.h
//  DMSearchFiltrateBarDemo
//
//  Created by 李二狗 on 2017/7/21.
//  Copyright © 2017年 YRHY Science and Technology (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    kDMSearchFiltrateBarStatusImageViewTypeNormalDown = 0,              //灰色朝下  未选中
    kDMSearchFiltrateBarStatusImageViewTypeSelectedDown = 1,            //蓝色朝下  选中但未展示选项
    kDMSearchFiltrateBarStatusImageViewTypeSelectedTop = 2,             //蓝色朝下  选中且展示选项
} kDMSearchFiltrateBarStatusImageViewType;

@interface DMSearchFiltrateBarButtonConfig : NSObject

@property (assign,nonatomic) CGFloat barButtonCenterXOffset;
@property (assign,nonatomic) CGFloat spaceBetweenTitleAndImage;
@property (nonatomic,strong)   UIColor* defaultTitleColor;
@property (nonatomic,strong)   UIColor* selectedTitleColor;
@property (nonatomic,strong)    UIFont *font;            // default is nil (system font 17 plain)
@property(nonatomic)        NSTextAlignment    textAlignment;   // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)
@property(nonatomic)        NSLineBreakMode    lineBreakMode;   // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text
@property (strong,nonatomic) NSArray* statusImages;  //按照 枚举的类型 给出相应的图


@end
