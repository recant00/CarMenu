//
//  AccessoriesViewController.h
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/5/22.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BTN_BLACK 20
#define BTN_WIDTH 120
#define IMAGE_BLACK 50
#define IMAGE_WIDTH 300


@interface AccessoriesViewController : UIViewController <UIScrollViewDelegate>
{
    NSMutableArray *arrayItemsBtn;
    NSMutableArray *arrayBrandBtn;
    NSMutableArray *arrayPhoto;
    NSMutableArray *arrayField;
    NSMutableArray *arrayCheck;
    CGFloat width;
    CGFloat height;
    int nItemsNumber;
    BOOL isFirstSelect;
}

@property (nonatomic, strong) UIImageView *bigImageView;// 大圖視圖
@property (nonatomic, strong) UIView *bgView;// 陰影視圖

@end
