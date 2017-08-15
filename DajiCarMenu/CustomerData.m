//
//  CustomerData.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/6/22.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "CustomerData.h"

@implementation CustomerData
@synthesize uniform, id_num, order_num;

- (id) init
{
    if(self=[super init])
    {
        uniform     = NULL;
        id_num      = NULL;
        order_num   = NULL;
    }
    
    return self;
}

@end
