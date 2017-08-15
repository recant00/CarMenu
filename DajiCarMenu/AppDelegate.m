//
//  AppDelegate.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/5/20.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "AppDelegate.h"

FMDatabase *database;
NSMutableArray *arrayCustomer;
NSMutableArray *arrayOrderInfo;

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize navigationCtrl;


-(void) initApp
{
    //建立一個navigator
    self.navigationCtrl = [[UINavigationController alloc] init];
    
    self.navigationCtrl.delegate = self;
    
    self.navigationCtrl.navigationBar.barStyle = UIBarStyleDefault;
    
    arrayOrderInfo = [[NSMutableArray alloc]init];
    arrayCustomer = [[NSMutableArray alloc]init];
    
    //加背景圖
    //[self.navigator.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_image"] forBarMetrics:UIBarMetricsDefault];
    //改變按鈕顏色
    //[self.navigator.navigationBar setTintColor:[UIColor orangeColor]];
    
    //建立mainView
    IntroductionViewController* introductionViewController = [[IntroductionViewController alloc] initWithNibName:@"IntroductionViewController" bundle:nil];
    self.navigationCtrl = [[UINavigationController alloc] initWithRootViewController:introductionViewController];
    self.window.rootViewController = self.navigationCtrl;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self initApp];
    [self openDatabase];
    [self createTable];
    [self loadDeviceFromDatabase];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - SQLite Methods

- (void)openDatabase
{
    NSArray *documentsPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *databaseFilePath = [[documentsPaths objectAtIndex:0] stringByAppendingPathComponent:@"databaseDaji.sqlite"];
    
    database = [[FMDatabase alloc] initWithPath:databaseFilePath];
    
    if ([database open])
        NSLog(@"open sqlite db ok.");
}

- (void)createTable
{
    if (database != NULL) {
        
        if (![database executeUpdate:SQLCMD_CREATE_TABLE_CUSTOMER]) NSLog(@"Can not create table customer");
        if (![database executeUpdate:SQLCMD_CREATE_TABLE_ORDERINFO]) NSLog(@"Can not create table order info");

        
        /* Edit here while table columns been modified */
        //if (![database columnExists:@"device" columnName:@""]) [database executeUpdate:@"ALTER TABLE device ADD COLUMN column-name column-type"];
    }
}

- (void)closeDatabase
{
    if (database != NULL) {
        [database close];
        //[database release];
        NSLog(@"close sqlite db ok.");
    }
}

- (void)loadDeviceFromDatabase {
    
    if (database != NULL) {
        
        FMResultSet *rsCustomer = [database executeQuery:@"SELECT * FROM customer"];
        //int cnt = 0;

        //mark: should be use thread....
        while([rsCustomer next]) {
            
            CustomerData *customerData = [[CustomerData alloc]init];
            customerData.uniform = [rsCustomer stringForColumn:@"uniform"];
            customerData.id_num = [rsCustomer stringForColumn:@"id_num"];
            customerData.order_num = [rsCustomer stringForColumn:@"order_num"];
            [arrayCustomer addObject:customerData];
            
            
        }
        
        
        
        FMResultSet *rsOrderInfo = [database executeQuery:@"SELECT * FROM order_info"];
        
        while([rsOrderInfo next]) {
            OrderInfoData *orderInfoData = [[OrderInfoData alloc]init];
            orderInfoData.order_num = [rsOrderInfo stringForColumn:@"order_num"];
            orderInfoData.car_type = [rsOrderInfo stringForColumn:@"car_type"];
            orderInfoData.car_num = [rsOrderInfo stringForColumn:@"car_num"];
            orderInfoData.campany = [rsOrderInfo stringForColumn:@"campany"];
            orderInfoData.date = [rsOrderInfo stringForColumn:@"date"];
            orderInfoData.uniform = [rsOrderInfo stringForColumn:@"uniform"];
            orderInfoData.address_campany = [rsOrderInfo stringForColumn:@"address_campany"];
            orderInfoData.phone_campany = [rsOrderInfo stringForColumn:@"phone_campany"];
            orderInfoData.owner = [rsOrderInfo stringForColumn:@"owner"];
            orderInfoData.id_num = [rsOrderInfo stringForColumn:@"id_num"];
            orderInfoData.birth = [rsOrderInfo stringForColumn:@"birth"];
            orderInfoData.address_owner = [rsOrderInfo stringForColumn:@"address_owner"];
            orderInfoData.phone_owner = [rsOrderInfo stringForColumn:@"phone_owner"];
            orderInfoData.unit_price = [rsOrderInfo stringForColumn:@"unit_price"];
            orderInfoData.deposit = [rsOrderInfo stringForColumn:@"deposit"];
            orderInfoData.delivery = [rsOrderInfo stringForColumn:@"delivery"];
            orderInfoData.last_pay = [rsOrderInfo stringForColumn:@"last_pay"];
            
            [arrayOrderInfo addObject:orderInfoData];
            
        }
        [rsCustomer close];
        [rsOrderInfo close];
    }
}



@end
