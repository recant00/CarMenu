//
//  OrderInfoData.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/6/22.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "OrderInfoData.h"

@implementation OrderInfoData
@synthesize order_num, car_type, car_num, campany ,date ,uniform ,address_campany ,phone_campany ,owner ,id_num ,birth ,address_owner ,phone_owner ,unit_price ,deposit ,delivery ,last_pay;


- (id) init
{
    if(self=[super init])
    {
        order_num       = NULL;
        car_type        = NULL;
        car_num         = NULL;
        campany         = NULL;
        date            = NULL;
        uniform         = NULL;
        address_campany = NULL;
        phone_campany   = NULL;
        owner           = NULL;
        id_num          = NULL;
        birth           = NULL;
        address_owner   = NULL;
        phone_owner     = NULL;
        unit_price      = NULL;
        deposit         = NULL;
        delivery        = NULL;
        last_pay        = NULL;
    }
    
    return self;
}

@end
