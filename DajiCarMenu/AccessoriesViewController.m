//
//  AccessoriesViewController.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/5/22.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "AccessoriesViewController.h"

@interface AccessoriesViewController ()

@end

@implementation AccessoriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    width = screenRect.size.width;
    height = screenRect.size.height;
    arrayPhoto = [[NSMutableArray alloc]init];
    arrayField = [[NSMutableArray alloc]init];
    arrayCheck = [[NSMutableArray alloc]init];
    arrayItemsBtn = [[NSMutableArray alloc]init];
    arrayBrandBtn = [[NSMutableArray alloc]init];
    isFirstSelect = TRUE;

    [self BtnCreate];
    
    
}

-(void)BtnCreate
{
    UIScrollView *scrollItem =[[UIScrollView alloc]init];
    //依次为它的x y位置，长和宽
    scrollItem.frame =CGRectMake(0, 100, width, 100);
    [scrollItem setBackgroundColor:[UIColor colorWithRed:100.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1]];
    [scrollItem setContentSize:CGSizeMake(80.0 + BTN_BLACK * 9 + BTN_WIDTH * 10 + 100, 0)];
    //把这个对象加到view中去。显示出来
    [self.view addSubview:scrollItem];
    
    UIButton *btnSeat = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnSeat addTarget:self
              action:@selector(btnItemsClicked:)
    forControlEvents:UIControlEventTouchUpInside];
    btnSeat.tag = 0;
    [btnSeat setTitle:NSLocalizedString(@"Seat",@"") forState:UIControlStateNormal];
    btnSeat.frame = CGRectMake(80.0 + BTN_BLACK * 0 + BTN_WIDTH * 0, -30.0, BTN_WIDTH, 40.0);
    [scrollItem addSubview:btnSeat];
    [arrayItemsBtn addObject:btnSeat];
    
    UIButton *btnTV = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnTV addTarget:self
                action:@selector(btnItemsClicked:)
      forControlEvents:UIControlEventTouchUpInside];
    btnTV.tag = 1;
    [btnTV setTitle:NSLocalizedString(@"TV",@"") forState:UIControlStateNormal];
    btnTV.frame = CGRectMake(80.0 + BTN_BLACK * 1 + BTN_WIDTH * 1, -30.0, BTN_WIDTH, 40.0);
    [scrollItem addSubview:btnTV];
    [arrayItemsBtn addObject:btnTV];
    
//    UIButton *btnLeather = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btnLeather addTarget:self
//                action:@selector(btnItemsClicked:)
//      forControlEvents:UIControlEventTouchUpInside];
//    btnLeather.tag = 2;
//    [btnLeather setTitle:NSLocalizedString(@"Leather",@"") forState:UIControlStateNormal];
//    btnLeather.frame = CGRectMake(80.0 + BTN_BLACK * 2 + BTN_WIDTH * 2, -30.0, BTN_WIDTH, 40.0);
//    [scrollItem addSubview:btnLeather];
//    [arrayItemsBtn addObject:btnLeather];
    
    UIButton *btnDecorate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDecorate addTarget:self
                action:@selector(btnItemsClicked:)
      forControlEvents:UIControlEventTouchUpInside];
    btnDecorate.tag = 2;
    [btnDecorate setTitle:NSLocalizedString(@"Decorate",@"") forState:UIControlStateNormal];
    btnDecorate.frame = CGRectMake(80.0 + BTN_BLACK * 2 + BTN_WIDTH * 2, -30.0, BTN_WIDTH, 40.0);
    [scrollItem addSubview:btnDecorate];
    [arrayItemsBtn addObject:btnDecorate];
    
    UIButton *btnElectronicCircumference = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnElectronicCircumference addTarget:self
                action:@selector(btnItemsClicked:)
      forControlEvents:UIControlEventTouchUpInside];
    btnElectronicCircumference.tag = 3;
    [btnElectronicCircumference setTitle:NSLocalizedString(@"Electronic Circumference",@"") forState:UIControlStateNormal];
    btnElectronicCircumference.frame = CGRectMake(80.0 + BTN_BLACK * 3 + BTN_WIDTH * 3, -30.0, BTN_WIDTH + 100, 40.0);
    [scrollItem addSubview:btnElectronicCircumference];
    [arrayItemsBtn addObject:btnElectronicCircumference];
    
    UIButton *btnPainted = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPainted addTarget:self
                action:@selector(btnItemsClicked:)
      forControlEvents:UIControlEventTouchUpInside];
    btnPainted.tag = 4;
    [btnPainted setTitle:NSLocalizedString(@"Painted",@"") forState:UIControlStateNormal];
    btnPainted.frame = CGRectMake(80.0 + BTN_BLACK * 4 + BTN_WIDTH * 4 + 100, -30.0, BTN_WIDTH, 40.0);
    [scrollItem addSubview:btnPainted];
    [arrayItemsBtn addObject:btnPainted];
    
//    UIButton *btnGlass = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btnGlass addTarget:self
//                action:@selector(btnItemsClicked:)
//      forControlEvents:UIControlEventTouchUpInside];
//    btnGlass.tag = 5;
//    [btnGlass setTitle:NSLocalizedString(@"Glass",@"") forState:UIControlStateNormal];
//    btnGlass.frame = CGRectMake(80.0 + BTN_BLACK * 5 + BTN_WIDTH * 5 + 100, -30.0, BTN_WIDTH, 40.0);
//    [scrollItem addSubview:btnGlass];
//    [arrayItemsBtn addObject:btnGlass];
    
//    UIButton *btnCarLogo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btnCarLogo addTarget:self
//                action:@selector(btnItemsClicked:)
//      forControlEvents:UIControlEventTouchUpInside];
//    btnCarLogo.tag = 5;
//    [btnCarLogo setTitle:NSLocalizedString(@"CarLogo",@"") forState:UIControlStateNormal];
//    btnCarLogo.frame = CGRectMake(80.0 + BTN_BLACK * 5 + BTN_WIDTH * 5 + 100, -30.0, BTN_WIDTH, 40.0);
//    [scrollItem addSubview:btnCarLogo];
//    [arrayItemsBtn addObject:btnCarLogo];
//    
//    UIButton *btnDecoration = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btnDecoration addTarget:self
//                action:@selector(btnItemsClicked:)
//      forControlEvents:UIControlEventTouchUpInside];
//    btnDecoration.tag = 6;
//    [btnDecoration setTitle:NSLocalizedString(@"Decoration",@"") forState:UIControlStateNormal];
//    btnDecoration.frame = CGRectMake(80.0 + BTN_BLACK * 6 + BTN_WIDTH * 6 + 100, -30.0, BTN_WIDTH, 40.0);
//    [scrollItem addSubview:btnDecoration];
//    [arrayItemsBtn addObject:btnDecoration];
    
    UIButton *btnSafety = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnSafety addTarget:self
                action:@selector(btnItemsClicked:)
      forControlEvents:UIControlEventTouchUpInside];
    btnSafety.tag = 5;
    [btnSafety setTitle:NSLocalizedString(@"Safety",@"") forState:UIControlStateNormal];
    btnSafety.frame = CGRectMake(80.0 + BTN_BLACK * 5 + BTN_WIDTH * 5 + 100, -30.0, BTN_WIDTH, 40.0);
    [scrollItem addSubview:btnSafety];
    [arrayItemsBtn addObject:btnSafety];
    
    [self btnItemsClicked:0];
    [self btnBrandClicked:0];
}

-(IBAction)btnItemsClicked:(id)sender
{
    int nTag = (int)[sender tag];
    if (nItemsNumber != nTag) {
        isFirstSelect = TRUE;
    }
    nItemsNumber = nTag;
    for (int i = 0; i < [arrayItemsBtn count]; i++) {
        UIButton *btn = [arrayItemsBtn objectAtIndex:i];
        if (i == nTag) {
            [btn setSelected:YES];
        }
        else
        {
            [btn setSelected:NO];
        }
    }
    
    [arrayBrandBtn removeAllObjects];

    UIScrollView *scrollBrand =[[UIScrollView alloc]init];
    scrollBrand.frame =CGRectMake(0, 250, width, 50);
    [scrollBrand setBackgroundColor:[UIColor colorWithRed:100.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:1]];

    [self.view addSubview:scrollBrand];
    
    //NSLog(@"nTag = %d", nTag);
    switch (nTag) {
        case 0:
        {
            for (int i = 0; i < 1; i ++) {
                UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                [btnBrand addTarget:self
                               action:@selector(btnBrandClicked:)
                     forControlEvents:UIControlEventTouchUpInside];
                btnBrand.tag = 0;
                [btnBrand setTitle:NSLocalizedString(@"Seoul",@"") forState:UIControlStateNormal];
                btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * i + BTN_WIDTH * i + 100, 5.0, BTN_WIDTH, 40.0);
                [scrollBrand addSubview:btnBrand];
                [arrayBrandBtn addObject:btnBrand];
            }
            
            break;
        }
        case 1:
        {
            UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand addTarget:self
                         action:@selector(btnBrandClicked:)
               forControlEvents:UIControlEventTouchUpInside];
            btnBrand.tag = 0;
            [btnBrand setTitle:NSLocalizedString(@"12 Inch",@"") forState:UIControlStateNormal];
            btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * 0 + BTN_WIDTH * 0 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand];
            [arrayBrandBtn addObject:btnBrand];
            
            UIButton *btnBrand1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand1 addTarget:self
                         action:@selector(btnBrandClicked:)
               forControlEvents:UIControlEventTouchUpInside];
            btnBrand1.tag = 1;
            [btnBrand1 setTitle:NSLocalizedString(@"19 Inch",@"") forState:UIControlStateNormal];
            btnBrand1.frame = CGRectMake(80.0 + BTN_BLACK * 1 + BTN_WIDTH * 1 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand1];
            [arrayBrandBtn addObject:btnBrand1];
            
            UIButton *btnBrand2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand2 addTarget:self
                          action:@selector(btnBrandClicked:)
                forControlEvents:UIControlEventTouchUpInside];
            btnBrand2.tag = 2;
            [btnBrand2 setTitle:NSLocalizedString(@"40 Inch",@"") forState:UIControlStateNormal];
            btnBrand2.frame = CGRectMake(80.0 + BTN_BLACK * 2 + BTN_WIDTH * 2 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand2];
            [arrayBrandBtn addObject:btnBrand2];
            
            UIButton *btnBrand3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand3 addTarget:self
                          action:@selector(btnBrandClicked:)
                forControlEvents:UIControlEventTouchUpInside];
            btnBrand3.tag = 3;
            [btnBrand3 setTitle:NSLocalizedString(@"Small TV",@"") forState:UIControlStateNormal];
            btnBrand3.frame = CGRectMake(80.0 + BTN_BLACK * 3 + BTN_WIDTH * 3 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand3];
            [arrayBrandBtn addObject:btnBrand3];
            
//            if (isFirstSelect) {
//                [self btnBrandClicked:0];
//                isFirstSelect = FALSE;
//            }
            break;
        }
        case 2:
        {
            UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand addTarget:self
                         action:@selector(btnBrandClicked:)
               forControlEvents:UIControlEventTouchUpInside];
            btnBrand.tag = 0;
            [btnBrand setTitle:NSLocalizedString(@"Passenger Room",@"") forState:UIControlStateNormal];
            btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * 0 + BTN_WIDTH * 0 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand];
            [arrayBrandBtn addObject:btnBrand];
            
            UIButton *btnBrand1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand1 addTarget:self
                         action:@selector(btnBrandClicked:)
               forControlEvents:UIControlEventTouchUpInside];
            btnBrand1.tag = 1;
            [btnBrand1 setTitle:NSLocalizedString(@"Guide Table",@"") forState:UIControlStateNormal];
            btnBrand1.frame = CGRectMake(80.0 + BTN_BLACK * 1 + BTN_WIDTH * 1 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand1];
            [arrayBrandBtn addObject:btnBrand1];
            
            UIButton *btnBrand2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand2 addTarget:self
                          action:@selector(btnBrandClicked:)
                forControlEvents:UIControlEventTouchUpInside];
            btnBrand2.tag = 2;
            [btnBrand2 setTitle:NSLocalizedString(@"Driver Table",@"") forState:UIControlStateNormal];
            btnBrand2.frame = CGRectMake(80.0 + BTN_BLACK * 2 + BTN_WIDTH * 2 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand2];
            [arrayBrandBtn addObject:btnBrand2];
            
            UIButton *btnBrand3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnBrand3 addTarget:self
                          action:@selector(btnBrandClicked:)
                forControlEvents:UIControlEventTouchUpInside];
            btnBrand3.tag = 3;
            [btnBrand3 setTitle:NSLocalizedString(@"Driver Ceiling",@"") forState:UIControlStateNormal];
            btnBrand3.frame = CGRectMake(80.0 + BTN_BLACK * 3 + BTN_WIDTH * 3 + 100, 5.0, BTN_WIDTH, 40.0);
            [scrollBrand addSubview:btnBrand3];
            [arrayBrandBtn addObject:btnBrand3];
            break;
        }
        case 3:
        {
            for (int i = 0; i < 1; i ++) {
                UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                [btnBrand addTarget:self
                             action:@selector(btnBrandClicked:)
                   forControlEvents:UIControlEventTouchUpInside];
                btnBrand.tag = 0;
                [btnBrand setTitle:NSLocalizedString(@"Camera",@"") forState:UIControlStateNormal];
                btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * i + BTN_WIDTH * i + 100, 5.0, BTN_WIDTH, 40.0);
                [scrollBrand addSubview:btnBrand];
                [arrayBrandBtn addObject:btnBrand];
            }
            break;
        }
        case 4:
        {
            for (int i = 0; i < 1; i ++) {
                UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                [btnBrand addTarget:self
                             action:@selector(btnBrandClicked:)
                   forControlEvents:UIControlEventTouchUpInside];
                btnBrand.tag = 0;
                [btnBrand setTitle:NSLocalizedString(@"Painted",@"") forState:UIControlStateNormal];
                btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * i + BTN_WIDTH * i + 100, 5.0, BTN_WIDTH, 40.0);
                [scrollBrand addSubview:btnBrand];
                [arrayBrandBtn addObject:btnBrand];
            }
            break;
        }
//        case 5:
//        {
//            break;
//        }
//        case 6:
//        {
//            break;
//        }
        case 5:
        {
            for (int i = 0; i < 1; i ++) {
                UIButton *btnBrand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                [btnBrand addTarget:self
                             action:@selector(btnBrandClicked:)
                   forControlEvents:UIControlEventTouchUpInside];
                btnBrand.tag = 0;
                [btnBrand setTitle:NSLocalizedString(@"Safety",@"") forState:UIControlStateNormal];
                btnBrand.frame = CGRectMake(80.0 + BTN_BLACK * i + BTN_WIDTH * i + 100, 5.0, BTN_WIDTH, 40.0);
                [scrollBrand addSubview:btnBrand];
                [arrayBrandBtn addObject:btnBrand];
            }
            break;
        }
//        case 8:
//        {
//            
//
//            break;
//        }
//        case 9:
//        {
//            break;
//        }
        default:
            break;
    }
    if (isFirstSelect) {
        [self btnBrandClicked:0];
        isFirstSelect = FALSE;
    }
    
    
}

-(IBAction)btnBrandClicked:(id)sender
{
    int nTag = (int)[sender tag];
    
    [arrayCheck removeAllObjects];
    [arrayPhoto removeAllObjects];
    [arrayField removeAllObjects];
    
    for (int i = 0; i < [arrayBrandBtn count]; i++) {
        UIButton *btn = [arrayBrandBtn objectAtIndex:i];
        if (i == nTag) {
            [btn setSelected:YES];
        }
        else
        {
            [btn setSelected:NO];
        }
    }
    
    UIScrollView *scrollPhoto =[[UIScrollView alloc]init];
    scrollPhoto.frame =CGRectMake(0, 320, width, height - 320);
    [scrollPhoto setBackgroundColor:[UIColor colorWithRed:200.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1]];
    
    [self.view addSubview:scrollPhoto];
    switch (nItemsNumber) {
        case 0:
        {
            switch (nTag)
            {
                case 0:
                {
                    for (int i = 0; i < 14; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Seoul",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * (i), 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * (i) + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 14, 0)];
                    
                    break;
                }
                default:
                    break;
            }
            
            break;
        }
        case 1:
        {
            switch (nTag) {
                case 0:
                {
                    for (int i = 0; i < 1; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"12_inch",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 1, 0)];
                    break;
                }
                case 1:
                {
                    for (int i = 0; i < 1; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"19_inch",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 1, 0)];
                    break;
                }
                case 2:
                {
                    for (int i = 0; i < 1; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"40_inch",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 14, 0)];
                    break;
                }
                case 3:
                {
                    for (int i = 0; i < 2; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"small",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 1, 0)];
                    break;
                }
                default:
                    break;
            
            }
            break;
        }
        case 2:
        {
            switch (nTag)
            {
                case 0:
                {
                    for (int i = 0; i < 3; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Passenger",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 3, 0)];
                    
                    break;
                }
                case 1:
                {
                    for (int i = 0; i < 2; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Guide",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ Table %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 3, 0)];
                    
                    break;
                }
                case 2:
                {
                    for (int i = 0; i < 5; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Driver",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ Table %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 5, 0)];
                    
                    break;
                }
                case 3:
                {
                    for (int i = 0; i < 4; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Driver Ceiling",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 4, 0)];
                    
                    break;
                }

                default:
                    break;
            }

            break;
        }
        case 3:
        {
            switch (nTag)
            {
                case 0:
                {
                    for (int i = 0; i < 1; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Camera",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 1, 0)];
                    
                    break;
                }
                default:
                    break;
            }

            break;
        }
        case 4:
        {
            switch (nTag)
            {
                case 0:
                {
                    for (int i = 0; i < 6; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Painted",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 6, 0)];
                    
                    break;
                }
                default:
                    break;
            }

            break;
        }
//        case 5:
//        {
//            break;
//        }
//        case 6:
//        {
//            break;
//        }
        case 5:
        {
            switch (nTag)
            {
                case 0:
                {
                    for (int i = 0; i < 1; i ++) {
                        NSString *strBrandName = NSLocalizedString(@"Safety",@"");
                        NSString *strImageName = [NSString stringWithFormat:@"%@_%d.png", strBrandName, i];
                        UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 30.0, IMAGE_WIDTH, 30)];
                        labelName.textAlignment = NSTextAlignmentCenter;
                        [labelName setFont:[UIFont boldSystemFontOfSize:20]];
                        labelName.text = [NSString stringWithFormat:@"%@ %d", strBrandName, i + 1];
                        [scrollPhoto addSubview:labelName];
                        UIImage *btnImage = [UIImage imageNamed:strImageName];
                        UIImageView  *imagePhoto = [[UIImageView alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 60.0, IMAGE_WIDTH, 500)];
                        [arrayPhoto addObject:imagePhoto];
                        imagePhoto.tag = i;
                        imagePhoto.image = btnImage;//加载入图片
                        imagePhoto.layer.masksToBounds = YES;
                        imagePhoto.layer.borderColor = [UIColor blackColor].CGColor;
                        imagePhoto.layer.borderWidth = 2;
                        UITapGestureRecognizer *myTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewBigImage:)];
                        
                        imagePhoto.userInteractionEnabled = YES;
                        [imagePhoto addGestureRecognizer:myTapGesture];
                        [scrollPhoto addSubview:imagePhoto];
                        
                        UIButton *btnCheck = [UIButton buttonWithType:UIButtonTypeCustom];
                        btnCheck.frame = CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i, 500, 60, 60);
                        [btnCheck addTarget:self action:@selector(btnCheckClicked:) forControlEvents:UIControlEventTouchUpInside];
                        [btnCheck setBackgroundColor:[UIColor whiteColor]];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
                        [btnCheck setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
                        
                        btnCheck.tag = i;
                        [arrayCheck addObject:btnCheck];
                        [scrollPhoto addSubview:btnCheck];
                        
                        UITextField *fieldValue = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * i + 60, 580, IMAGE_WIDTH - 120, 30)];
                        [fieldValue setBackgroundColor:[UIColor whiteColor]];
                        fieldValue.hidden = YES;
                        [arrayField addObject:fieldValue];
                        [scrollPhoto addSubview:fieldValue];
                        
                    }
                    [scrollPhoto setContentSize:CGSizeMake(40.0 + (IMAGE_BLACK + IMAGE_WIDTH) * 14, 0)];
                    
                    break;
                }
                default:
                    break;
            }

            break;
        }
//        case 8:
//        {
//            
//            break;
//        }
            
        default:
            break;
    }
    
    
    
}

// 大圖視圖
- (UIImageView *)bigImageView:(int)nTag {
    if (nil == _bigImageView) {
               UIImageView *imageView = [arrayPhoto objectAtIndex:nTag];
        UIImage *imagePhoto = [imageView image];
        
        float nScale = 1;
        if (imagePhoto.size.height > height) {
            nScale = height / imagePhoto.size.height;
        }
        CGFloat nWidth = imagePhoto.size.width * nScale;
        CGFloat nHeight = imagePhoto.size.height * nScale;
        _bigImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width - nWidth) / 2, (height - nHeight) / 2, nWidth, nHeight)];
        [_bigImageView setImage:imagePhoto];
        // 設置大圖的點擊響應，此處為收起大圖
        _bigImageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *imageTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissBigImage:)];
        UIView *singleTapView = [imageTap view];
        singleTapView.tag = nTag;
        [_bigImageView addGestureRecognizer:imageTap];
    }
    return _bigImageView;
}

// 陰影視圖
- (UIView *)bgView:(int)nTag {
    if (nil == _bgView) {
        _bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
        _bgView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        // 設置陰影背景的點擊響應，此處為收起大圖
        _bgView.userInteractionEnabled = YES;
        UITapGestureRecognizer *bgTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissBigImage:)];
        UIView *singleTapView = [bgTap view];
        singleTapView.tag = nTag;
        [_bgView addGestureRecognizer:bgTap];
    }
    return _bgView;
}

// 顯示大圖
- (void)viewBigImage:(id)sender {
    UITapGestureRecognizer *singleTap = (UITapGestureRecognizer *)sender;
    NSLog(@"%ld",[singleTap view].tag);
    int nTag = (int)[singleTap view].tag;
    UIImageView *imageView = [arrayPhoto objectAtIndex:nTag];
    [self bigImageView:nTag];// 初始化大圖
    
    // 讓大圖從小圖的位置和大小開始出現
    CGRect originFram = _bigImageView.frame;
    _bigImageView.frame = imageView.frame;
    [self.view addSubview:_bigImageView];
    
    // 動畫到大圖該有的大小
    [UIView animateWithDuration:0.3 animations:^{
        // 改變大小
        _bigImageView.frame = originFram;
        // 改變位置
        _bigImageView.center = self.view.center;// 設置中心位置到新的位置
    }];
    
    // 添加陰影視圖
    [self bgView:nTag];
    [self.view addSubview:_bgView];
    
    // 將大圖放到最上層，否則會被後添加的陰影蓋住
    [self.view bringSubviewToFront:_bigImageView];
}

// 收起大圖
- (void)dismissBigImage:(id)sender {
    [self.bgView removeFromSuperview];// 移除陰影
    UITapGestureRecognizer *singleTap = (UITapGestureRecognizer *)sender;
    //NSLog(@"%ld",[singleTap view].tag);
    int nTag = (int)[singleTap view].tag;
    UIImageView *imageView = [arrayPhoto objectAtIndex:nTag];
    // 將大圖動畫回小圖的位置和大小
    [UIView animateWithDuration:0.3 animations:^{
        // 改變大小
        _bigImageView.frame = imageView.frame;
        // 改變位置
        _bigImageView.center = imageView.center;// 設置中心位置到新的位置
    }];
    
    // 延遲執行，移動回後再消滅掉
    double delayInSeconds = 0.3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [_bigImageView removeFromSuperview];
        _bigImageView = nil;
        _bgView = nil;
    });
}

- (void)btnCheckClicked:(id)sender
{
    
    UIButton *btnSelect = (UIButton*)sender;
    NSLog(@"btn.selected = %d", btnSelect.selected);

    for (int i = 0; i < [arrayField count]; i++) {
        UITextField *field = [arrayField objectAtIndex:i];
        field.hidden = YES;

    }
    for (int i = 0; i < [arrayCheck count]; i++) {
        UIButton *btn = [arrayCheck objectAtIndex:i];
        
        
        if (btn.tag == btnSelect.tag) {
            NSLog(@"btn.selected = %d", btn.selected);
            btn.selected = !btn.selected;
            UITextField *field = [arrayField objectAtIndex:i];
            field.hidden = !btn.selected;
        }
        else{
            btn.selected = NO;
        }
        
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
