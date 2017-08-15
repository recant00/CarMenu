//
//  AppDelegate.h
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/5/20.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IntroductionViewController.h"
#import "FMDatabase.h"
#import "FMDatabaseAdditions.h"
#import "FMDatabasePool.h"
#import "FMDatabaseQueue.h"
#import "CustomerData.h"
#import "OrderInfoData.h"

#define SQLCMD_CREATE_TABLE_CUSTOMER @"CREATE TABLE IF NOT EXISTS customer(id INTEGER PRIMARY KEY AUTOINCREMENT, uniform TEXT, id_num TEXT, order_num TEXT)"

#define SQLCMD_CREATE_TABLE_ORDERINFO @"CREATE TABLE IF NOT EXISTS order_info(id INTEGER PRIMARY KEY AUTOINCREMENT, order_num TEXT, car_type TEXT, car_num TEXT, campany TEXT, date TEXT, uniform TEXT, address_campany TEXT, phone_campany TEXT, owner TEXT, id_num TEXT, birth TEXT, address_owner TEXT, phone_owner TEXT, unit_price TEXT, deposit TEXT, delivery TEXT, last_pay TEXT)"

extern FMDatabase *database;
extern NSMutableArray *arrayCustomer;
extern NSMutableArray *arrayOrderInfo;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate>
{
    UINavigationController *navigationCtrl;
}

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,retain) UINavigationController *navigationCtrl;


@end

