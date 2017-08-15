//
//  IntroductionViewController.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/5/20.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "IntroductionViewController.h"

@interface IntroductionViewController ()

@end

@implementation IntroductionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = NSLocalizedString(@"Introduction", @"");
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Skip" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = anotherButton;
    
    //UIScrollView設定
    CGFloat width, height;
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    width = screenRect.size.width;
    height = screenRect.size.height;
    CGRect scrollViewFrame = CGRectMake(0, 0, width, height);
    scrollDemo = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
    [scrollDemo setContentSize:CGSizeMake(width * 5, height - 68)];
    [scrollDemo setPagingEnabled:YES];
    [scrollDemo setScrollsToTop:NO];
    [scrollDemo setDelegate:self];
    [scrollDemo setBackgroundColor:[UIColor colorWithRed:100.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1]];
    
    [self.view addSubview:scrollDemo];
    
    
    //UIPageControl設定
    pageCtrlDemo = [[UIPageControl alloc] init];
    pageCtrlDemo.frame = CGRectMake(0, 0, width, 50);
    pageCtrlDemo.numberOfPages = 5;
    pageCtrlDemo.currentPage = 0;
    pageCtrlDemo.center = CGPointMake(self.view.center.x, 900);
    [self.view addSubview:pageCtrlDemo];
    
    
    //製作ScrollView的內容
    for (int i=0; i!=pageCtrlDemo.numberOfPages; i++) {
        CGRect frame = CGRectMake(width*i, 0, width, height);
        UIView *view = [[UIView alloc]initWithFrame:frame];
        
        CGFloat r, g ,b;
        r = (arc4random() % 10) / 10.0;
        g = (arc4random() % 10) / 10.0;
        b = (arc4random() % 10) / 10.0;
        [view setBackgroundColor:[UIColor colorWithRed:r green:g blue:b alpha:1]];
        
        //使用QuartzCore.framework替UIView加上圓角
        [view.layer setCornerRadius:15.0];
        
        [scrollDemo addSubview:view];
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    CGFloat width = scrollDemo.frame.size.width;
    NSInteger currentPage = ((scrollDemo.contentOffset.x - width / 2) / width) + 1;
    [pageCtrlDemo setCurrentPage:currentPage];
}

- (IBAction)changeCurrentPage:(UIPageControl *)sender {
    NSInteger page = pageCtrlDemo.currentPage;
    
    CGFloat width, height;
    width = scrollDemo.frame.size.width;
    height = scrollDemo.frame.size.height;
    CGRect frame = CGRectMake(width*page, 0, width, height);
    
    [scrollDemo scrollRectToVisible:frame animated:YES];
}

-(void)next
{
    //AccessoriesViewController *controller = [[AccessoriesViewController alloc] init];
    CustomerInfoViewController *controller = [[CustomerInfoViewController alloc] init];
    
    [self.navigationController pushViewController:controller animated:YES];
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
