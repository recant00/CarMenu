//
//  CustomerInfoViewController.h
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/6/8.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDatabase.h"
#import "FMDatabaseAdditions.h"
#import "FMDatabasePool.h"
#import "FMDatabaseQueue.h"
#import "CustomerData.h"
#import "OrderInfoData.h"
#import "AccessoriesViewController.h"

#define BLANK 10

extern FMDatabase *database;
extern NSMutableArray *arrayCustomer;
extern NSMutableArray *arrayOrderInfo;

@interface CustomerInfoViewController : UIViewController
{

}

//@property (nonatomic, strong) UILabel *label_order_num;
//@property (nonatomic, strong) UILabel *label_campany;
//@property (nonatomic, strong) UILabel *label_date;
//@property (nonatomic, strong) UILabel *label_uniform;
//@property (nonatomic, strong) UILabel *label_address_campany;
//@property (nonatomic, strong) UILabel *label_phone_campany;
//@property (nonatomic, strong) UILabel *label_owner;
//@property (nonatomic, strong) UILabel *label_id_num;
//@property (nonatomic, strong) UILabel *label_birth;
//@property (nonatomic, strong) UILabel *label_address_owner;
//@property (nonatomic, strong) UILabel *label_phone_owner;
//@property (nonatomic, strong) UILabel *label_unit_price;
//@property (nonatomic, strong) UILabel *label_deposit;
//@property (nonatomic, strong) UILabel *label_delivery;
//@property (nonatomic, strong) UILabel *label_last_pay;

@property (nonatomic, retain) UITextField *textField_order_num;
@property (nonatomic, retain) UITextField *textField_car_type;
@property (nonatomic, retain) UITextField *textField_car_num;
@property (nonatomic, retain) UITextField *textField_campany;
@property (nonatomic, retain) UITextField *textField_date;
@property (nonatomic, retain) UITextField *textField_uniform;
@property (nonatomic, retain) UITextField *textField_address_campany;
@property (nonatomic, retain) UITextField *textField_phone_campany;
@property (nonatomic, retain) UITextField *textField_owner;
@property (nonatomic, retain) UITextField *textField_id_num;
@property (nonatomic, retain) UITextField *textField_birth;
@property (nonatomic, retain) UITextField *textField_address_owner;
@property (nonatomic, retain) UITextField *textField_phone_owner;
@property (nonatomic, retain) UITextField *textField_unit_price;
@property (nonatomic, retain) UITextField *textField_deposit;
@property (nonatomic, retain) UITextField *textField_delivery;
@property (nonatomic, retain) UITextField *textField_last_pay;


//@property (nonatomic, copy) NSString *order_num;
//@property (nonatomic, copy) NSString *campany;
//@property (nonatomic, copy) NSString *date;
//@property (nonatomic, copy) NSString *uniform;
//@property (nonatomic, copy) NSString *address_campany;
//@property (nonatomic, copy) NSString *phone_campany;
//@property (nonatomic, copy) NSString *owner;
//@property (nonatomic, copy) NSString *id_num;
//@property (nonatomic, copy) NSString *birth;
//@property (nonatomic, copy) NSString *address_owner;
//@property (nonatomic, copy) NSString *phone_owner;
//@property (nonatomic, copy) NSString *unit_price;
//@property (nonatomic, copy) NSString *deposit;
//@property (nonatomic, copy) NSString *delivery;
//@property (nonatomic, copy) NSString *last_pay;

@end
