//
//  CustomerInfoViewController.m
//  DajiCarMenu
//
//  Created by Rean Yang on 2017/6/8.
//  Copyright © 2017年 Rean Yang. All rights reserved.
//

#import "CustomerInfoViewController.h"



@interface CustomerInfoViewController ()

@end

@implementation CustomerInfoViewController
@synthesize textField_date, textField_car_type, textField_car_num, textField_birth, textField_owner, textField_id_num, textField_campany, textField_deposit, textField_uniform, textField_delivery, textField_last_pay, textField_order_num, textField_unit_price, textField_phone_owner, textField_address_owner, textField_phone_campany, textField_address_campany;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = NSLocalizedString(@"Customer Infomation", @"");
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = anotherButton;
    
    [self LabelCreate];
    [self TextFieldCreate];

    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat width = screenRect.size.width;
    CGFloat height = screenRect.size.height;
    
    UIButton *btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSave.frame = CGRectMake(width - 150, height - 100, 100, 60);
    [btnSave addTarget:self action:@selector(btnSaveClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnSave.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [btnSave.layer setBorderWidth:0.8];
    [btnSave.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:24.0]];

    [btnSave setTitle:NSLocalizedString(@"Save",@"") forState:UIControlStateNormal];
    [btnSave setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btnSave];
//    [btnSave setImage:[UIImage imageNamed:@"ItemCheck_c.png"] forState:UIControlStateSelected];
//    [btnSave setImage:[UIImage imageNamed:@"ItemCheck_n.png"] forState:UIControlStateNormal];
}

-(void)LabelCreate
{
    UILabel *label_order_num = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 100.0, 140, 30)];
    label_order_num.textAlignment = NSTextAlignmentLeft;
    [label_order_num setFont:[UIFont boldSystemFontOfSize:20]];
    label_order_num.text = [NSString stringWithFormat:NSLocalizedString(@"Order Number",@"")];
    [self.view addSubview:label_order_num];
    
    UILabel *label_car_type = [[UILabel alloc]initWithFrame:CGRectMake(430.0, 100.0, 100, 30)];
    label_car_type.textAlignment = NSTextAlignmentLeft;
    [label_car_type setFont:[UIFont boldSystemFontOfSize:20]];
    label_car_type.text = [NSString stringWithFormat:NSLocalizedString(@"Car Type",@"")];
    [self.view addSubview:label_car_type];
    
    UILabel *label_car_num = [[UILabel alloc]initWithFrame:CGRectMake(770.0, 100.0, 130, 30)];
    label_car_num.textAlignment = NSTextAlignmentLeft;
    [label_car_num setFont:[UIFont boldSystemFontOfSize:20]];
    label_car_num.text = [NSString stringWithFormat:NSLocalizedString(@"Car Value",@"")];
    [self.view addSubview:label_car_num];
    
    UILabel *label_date = [[UILabel alloc]initWithFrame:CGRectMake(1010.0, 100.0, 100, 30)];
    label_date.textAlignment = NSTextAlignmentLeft;
    [label_date setFont:[UIFont boldSystemFontOfSize:20]];
    label_date.text = [NSString stringWithFormat:NSLocalizedString(@"Date",@"")];
    [self.view addSubview:label_date];
    
    UILabel *label_campany = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 200.0, 200, 30)];
    label_campany.textAlignment = NSTextAlignmentLeft;
    [label_campany setFont:[UIFont boldSystemFontOfSize:20]];
    label_campany.text = [NSString stringWithFormat:NSLocalizedString(@"Campany",@"")];
    [self.view addSubview:label_campany];
    
    UILabel *label_uniform = [[UILabel alloc]initWithFrame:CGRectMake(1010.0, 200.0, 100, 30)];
    label_uniform.textAlignment = NSTextAlignmentLeft;
    [label_uniform setFont:[UIFont boldSystemFontOfSize:20]];
    label_uniform.text = [NSString stringWithFormat:NSLocalizedString(@"Uniform",@"")];
    [self.view addSubview:label_uniform];
    
    UILabel *label_address_campany = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 300.0, 200, 30)];
    label_address_campany.textAlignment = NSTextAlignmentLeft;
    [label_address_campany setFont:[UIFont boldSystemFontOfSize:20]];
    label_address_campany.text = [NSString stringWithFormat:NSLocalizedString(@"Campany Address",@"")];
    [self.view addSubview:label_address_campany];
    
    UILabel *label_phone_campany = [[UILabel alloc]initWithFrame:CGRectMake(1010.0, 300.0, 200, 30)];
    label_phone_campany.textAlignment = NSTextAlignmentLeft;
    [label_phone_campany setFont:[UIFont boldSystemFontOfSize:20]];
    label_phone_campany.text = [NSString stringWithFormat:NSLocalizedString(@"Campany Phone",@"")];
    [self.view addSubview:label_phone_campany];
    
    UILabel *label_owner = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 400.0, 100, 30)];
    label_owner.textAlignment = NSTextAlignmentLeft;
    [label_owner setFont:[UIFont boldSystemFontOfSize:20]];
    label_owner.text = [NSString stringWithFormat:NSLocalizedString(@"Owner",@"")];
    [self.view addSubview:label_owner];
    
    UILabel *label_id_num = [[UILabel alloc]initWithFrame:CGRectMake(520.0, 400.0, 100, 30)];
    label_id_num.textAlignment = NSTextAlignmentLeft;
    [label_id_num setFont:[UIFont boldSystemFontOfSize:20]];
    label_id_num.text = [NSString stringWithFormat:NSLocalizedString(@"ID",@"")];
    [self.view addSubview:label_id_num];
    
    UILabel *label_birth = [[UILabel alloc]initWithFrame:CGRectMake(900.0, 400.0, 100, 30)];
    label_birth.textAlignment = NSTextAlignmentLeft;
    [label_birth setFont:[UIFont boldSystemFontOfSize:20]];
    label_birth.text = [NSString stringWithFormat:NSLocalizedString(@"Birthday",@"")];
    [self.view addSubview:label_birth];
    
    UILabel *label_address_owner = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 500.0, 200, 30)];
    label_address_owner.textAlignment = NSTextAlignmentLeft;
    [label_address_owner setFont:[UIFont boldSystemFontOfSize:20]];
    label_address_owner.text = [NSString stringWithFormat:NSLocalizedString(@"Owner Address",@"")];
    [self.view addSubview:label_address_owner];
    
    UILabel *label_phone_owner = [[UILabel alloc]initWithFrame:CGRectMake(1010.0, 500.0, 200, 30)];
    label_phone_owner.textAlignment = NSTextAlignmentLeft;
    [label_phone_owner setFont:[UIFont boldSystemFontOfSize:20]];
    label_phone_owner.text = [NSString stringWithFormat:NSLocalizedString(@"Owner Phone",@"")];
    [self.view addSubview:label_phone_owner];
    
    UILabel *label_unit_price = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 600.0, 100, 30)];
    label_unit_price.textAlignment = NSTextAlignmentLeft;
    [label_unit_price setFont:[UIFont boldSystemFontOfSize:20]];
    label_unit_price.text = [NSString stringWithFormat:NSLocalizedString(@"Unit Price",@"")];
    [self.view addSubview:label_unit_price];
    
    UILabel *label_deposit = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 700.0, 200, 30)];
    label_deposit.textAlignment = NSTextAlignmentLeft;
    [label_deposit setFont:[UIFont boldSystemFontOfSize:20]];
    label_deposit.text = [NSString stringWithFormat:NSLocalizedString(@"Deposit",@"")];
    [self.view addSubview:label_deposit];
    
    UILabel *label_delivery = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 800.0, 200, 30)];
    label_delivery.textAlignment = NSTextAlignmentLeft;
    [label_delivery setFont:[UIFont boldSystemFontOfSize:20]];
    label_delivery.text = [NSString stringWithFormat:NSLocalizedString(@"Delivery",@"")];
    [self.view addSubview:label_delivery];
    
    UILabel *label_last_pay = [[UILabel alloc]initWithFrame:CGRectMake(40.0, 900.0, 200, 30)];
    label_last_pay.textAlignment = NSTextAlignmentLeft;
    [label_last_pay setFont:[UIFont boldSystemFontOfSize:20]];
    label_last_pay.text = [NSString stringWithFormat:NSLocalizedString(@"Last Pay",@"")];
    [self.view addSubview:label_last_pay];

}

-(void)TextFieldCreate
{
    textField_order_num = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + 140 + BLANK, 100, 200, 30)];
    [textField_order_num setBackgroundColor:[UIColor whiteColor]];
    textField_order_num.layer.cornerRadius=8.0f;
    textField_order_num.layer.masksToBounds=YES;
    textField_order_num.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_order_num.layer.borderWidth= 1.0f;
    [textField_order_num setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_order_num];
    textField_order_num.text = @"111";
    
    textField_car_type = [[UITextField alloc] initWithFrame:CGRectMake(330.0 + 200 + BLANK, 100, 200, 30)];
    [textField_car_type setBackgroundColor:[UIColor whiteColor]];
    textField_car_type.layer.cornerRadius=8.0f;
    textField_car_type.layer.masksToBounds=YES;
    textField_car_type.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_car_type.layer.borderWidth= 1.0f;
    [textField_car_type setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_car_type];
    textField_car_type.text = @"111";
    
    textField_car_num = [[UITextField alloc] initWithFrame:CGRectMake(890 + BLANK, 100, 80, 30)];
    [textField_car_num setBackgroundColor:[UIColor whiteColor]];
    textField_car_num.layer.cornerRadius=8.0f;
    textField_car_num.layer.masksToBounds=YES;
    textField_car_num.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_car_num.layer.borderWidth= 1.0f;
    [textField_car_num setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_car_num];
    textField_car_num.text = @"111";
    
    textField_date = [[UITextField alloc] initWithFrame:CGRectMake(1080 + BLANK, 100, 220, 30)];
    [textField_date setBackgroundColor:[UIColor whiteColor]];
    textField_date.layer.cornerRadius=8.0f;
    textField_date.layer.masksToBounds=YES;
    textField_date.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_date.layer.borderWidth= 1.0f;
    [textField_date setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_date];
    textField_date.text = @"111";
    
    textField_campany = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + 140 + BLANK, 200, 790, 30)];
    [textField_campany setBackgroundColor:[UIColor whiteColor]];
    textField_campany.layer.cornerRadius=8.0f;
    textField_campany.layer.masksToBounds=YES;
    textField_campany.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_campany.layer.borderWidth= 1.0f;
    [textField_campany setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_campany];
    textField_campany.text = @"111";
    
    textField_uniform = [[UITextField alloc] initWithFrame:CGRectMake(1080 + BLANK, 200, 220, 30)];
    [textField_uniform setBackgroundColor:[UIColor whiteColor]];
    textField_uniform.layer.cornerRadius=8.0f;
    textField_uniform.layer.masksToBounds=YES;
    textField_uniform.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_uniform.layer.borderWidth= 1.0f;
    [textField_uniform setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_uniform];
    textField_uniform.text = @"111";
    
    textField_address_campany = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + 190 + BLANK, 300, 740, 30)];
    [textField_address_campany setBackgroundColor:[UIColor whiteColor]];
    textField_address_campany.layer.cornerRadius=8.0f;
    textField_address_campany.layer.masksToBounds=YES;
    textField_address_campany.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_address_campany.layer.borderWidth= 1.0f;
    [textField_address_campany setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_address_campany];
    textField_address_campany.text = @"111";
    
    textField_phone_campany = [[UITextField alloc] initWithFrame:CGRectMake(1160 + BLANK, 300, 140, 30)];
    [textField_phone_campany setBackgroundColor:[UIColor whiteColor]];
    textField_phone_campany.layer.cornerRadius=8.0f;
    textField_phone_campany.layer.masksToBounds=YES;
    textField_phone_campany.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_phone_campany.layer.borderWidth= 1.0f;
    [textField_phone_campany setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_phone_campany];
    textField_phone_campany.text = @"111";
    
    textField_owner = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + 140 + BLANK, 400, 300, 30)];
    [textField_owner setBackgroundColor:[UIColor whiteColor]];
    textField_owner.layer.cornerRadius=8.0f;
    textField_owner.layer.masksToBounds=YES;
    textField_owner.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_owner.layer.borderWidth= 1.0f;
    [textField_owner setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_owner];
    textField_owner.text = @"111";
    
    textField_id_num = [[UITextField alloc] initWithFrame:CGRectMake(550 + BLANK, 400, 300, 30)];
    [textField_id_num setBackgroundColor:[UIColor whiteColor]];
    textField_id_num.layer.cornerRadius=8.0f;
    textField_id_num.layer.masksToBounds=YES;
    textField_id_num.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_id_num.layer.borderWidth= 1.0f;
    [textField_id_num setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_id_num];
    textField_id_num.text = @"111";
    
    textField_birth = [[UITextField alloc] initWithFrame:CGRectMake(1000 + BLANK, 400, 300, 30)];
    [textField_birth setBackgroundColor:[UIColor whiteColor]];
    textField_birth.layer.cornerRadius=8.0f;
    textField_birth.layer.masksToBounds=YES;
    textField_birth.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_birth.layer.borderWidth= 1.0f;
    [textField_birth setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_birth];
    textField_birth.text = @"111";
    
    textField_address_owner = [[UITextField alloc] initWithFrame:CGRectMake(40.0 + 190 + BLANK, 500, 740, 30)];
    [textField_address_owner setBackgroundColor:[UIColor whiteColor]];
    textField_address_owner.layer.cornerRadius=8.0f;
    textField_address_owner.layer.masksToBounds=YES;
    textField_address_owner.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_address_owner.layer.borderWidth= 1.0f;
    [textField_address_owner setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_address_owner];
    textField_address_owner.text = @"111";

    textField_phone_owner = [[UITextField alloc] initWithFrame:CGRectMake(1160 + BLANK, 500, 140, 30)];
    [textField_phone_owner setBackgroundColor:[UIColor whiteColor]];
    textField_phone_owner.layer.cornerRadius=8.0f;
    textField_phone_owner.layer.masksToBounds=YES;
    textField_phone_owner.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_phone_owner.layer.borderWidth= 1.0f;
    [textField_phone_owner setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_phone_owner];
    textField_phone_owner.text = @"111";
    
    textField_unit_price = [[UITextField alloc] initWithFrame:CGRectMake(40 + 140 + BLANK, 600, 200, 30)];
    [textField_unit_price setBackgroundColor:[UIColor whiteColor]];
    textField_unit_price.layer.cornerRadius=8.0f;
    textField_unit_price.layer.masksToBounds=YES;
    textField_unit_price.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_unit_price.layer.borderWidth= 1.0f;
    [textField_unit_price setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_unit_price];
    textField_unit_price.text = @"111";
    
    textField_deposit = [[UITextField alloc] initWithFrame:CGRectMake(40 + 140 + BLANK, 700, 200, 30)];
    [textField_deposit setBackgroundColor:[UIColor whiteColor]];
    textField_deposit.layer.cornerRadius=8.0f;
    textField_deposit.layer.masksToBounds=YES;
    textField_deposit.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_deposit.layer.borderWidth= 1.0f;
    [textField_deposit setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_deposit];
    textField_deposit.text = @"111";
    
    textField_delivery = [[UITextField alloc] initWithFrame:CGRectMake(40 + 140 + BLANK, 800, 200, 30)];
    [textField_delivery setBackgroundColor:[UIColor whiteColor]];
    textField_delivery.layer.cornerRadius=8.0f;
    textField_delivery.layer.masksToBounds=YES;
    textField_delivery.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_delivery.layer.borderWidth= 1.0f;
    [textField_delivery setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_delivery];
    textField_delivery.text = @"111";
    
    textField_last_pay = [[UITextField alloc] initWithFrame:CGRectMake(40 + 140 + BLANK, 900, 200, 30)];
    [textField_last_pay setBackgroundColor:[UIColor whiteColor]];
    textField_last_pay.layer.cornerRadius=8.0f;
    textField_last_pay.layer.masksToBounds=YES;
    textField_last_pay.layer.borderColor=[[UIColor blackColor]CGColor];
    textField_last_pay.layer.borderWidth= 1.0f;
    [textField_last_pay setFont:[UIFont systemFontOfSize:24]];
    [self.view addSubview:textField_last_pay];
    textField_last_pay.text = @"111";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next
{
    AccessoriesViewController *controller = [[AccessoriesViewController alloc] init];
    //CustomerInfoViewController *controller = [[CustomerInfoViewController alloc] init];
    
    [self.navigationController pushViewController:controller animated:YES];
}

-(BOOL)isObjectEqual:(OrderInfoData*)orderInfoData tmpOrderInfoData:(OrderInfoData*)tmpOrderInfoData
{
    BOOL bIsEqual = NO;
    
    return bIsEqual;
}

-(IBAction)btnSaveClicked:(id)sender
{
    if ([textField_order_num.text isEqualToString:@""]) {
        return;
    }
    OrderInfoData *orderInfoData = [[OrderInfoData alloc]init];
    orderInfoData.order_num = [NSString stringWithFormat:@"%@", textField_order_num.text];
    orderInfoData.car_type = [NSString stringWithFormat:@"%@", textField_car_type.text];
    orderInfoData.car_num = [NSString stringWithFormat:@"%@", textField_car_num.text];
    orderInfoData.campany = [NSString stringWithFormat:@"%@", textField_campany.text];
    orderInfoData.date = [NSString stringWithFormat:@"%@", textField_date.text];
    orderInfoData.uniform = [NSString stringWithFormat:@"%@", textField_uniform.text];
    orderInfoData.address_campany = [NSString stringWithFormat:@"%@", textField_address_campany.text];
    orderInfoData.phone_campany = [NSString stringWithFormat:@"%@", textField_phone_campany.text];
    orderInfoData.owner = [NSString stringWithFormat:@"%@", textField_owner.text];
    orderInfoData.id_num = [NSString stringWithFormat:@"%@", textField_id_num.text];
    orderInfoData.birth = [NSString stringWithFormat:@"%@", textField_birth.text];
    orderInfoData.address_owner = [NSString stringWithFormat:@"%@", textField_address_owner.text];
    orderInfoData.phone_owner = [NSString stringWithFormat:@"%@", textField_phone_owner.text];
    orderInfoData.unit_price = [NSString stringWithFormat:@"%@", textField_unit_price.text];
    orderInfoData.deposit = [NSString stringWithFormat:@"%@", textField_deposit.text];
    orderInfoData.delivery = [NSString stringWithFormat:@"%@", textField_delivery.text];
    orderInfoData.last_pay = [NSString stringWithFormat:@"%@", textField_last_pay.text];
    
    BOOL bIsEqual = NO;
    
    for (int i = 0; i < [arrayOrderInfo count]; i++) {
        OrderInfoData *orderInfoDataTmp = [arrayOrderInfo objectAtIndex:i];
        
        if ([orderInfoDataTmp.order_num isEqualToString:orderInfoData.order_num]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.car_type isEqualToString:orderInfoData.car_type]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.car_num isEqualToString:orderInfoData.car_num]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.campany isEqualToString:orderInfoData.campany]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.date isEqualToString:orderInfoData.date]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.uniform isEqualToString:orderInfoData.uniform]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.address_campany isEqualToString:orderInfoData.address_campany]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.phone_campany isEqualToString:orderInfoData.phone_campany]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.owner isEqualToString:orderInfoData.owner]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.id_num isEqualToString:orderInfoData.id_num]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.birth isEqualToString:orderInfoData.birth]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.address_owner isEqualToString:orderInfoData.address_owner]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.phone_owner isEqualToString:orderInfoData.phone_owner]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.unit_price isEqualToString:orderInfoData.unit_price]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.deposit isEqualToString:orderInfoData.deposit]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.delivery isEqualToString:orderInfoData.delivery]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
        if ([orderInfoDataTmp.last_pay isEqualToString:orderInfoData.last_pay]) {
            bIsEqual = YES;
        }
        else
        {
            bIsEqual = NO;
            continue;
        }
        
    }
    if (!bIsEqual) {
        [arrayOrderInfo addObject:orderInfoData];
        
        if (database != NULL) {
            [database executeUpdate:@"INSERT INTO customer(uniform, id_num, order_num) VALUES(?,?,?)",
             textField_uniform.text,
             textField_id_num.text,
             textField_order_num.text];
            
            [database executeUpdate:@"INSERT INTO order_info(order_num, car_type, car_num, campany, date, uniform, address_campany, phone_campany, owner, id_num, birth, address_owner, phone_owner, unit_price, deposit, delivery, last_pay) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
             textField_order_num.text,
             textField_car_type.text,
             textField_car_num.text,
             textField_campany.text,
             textField_date.text,
             textField_uniform.text,
             textField_address_campany.text,
             textField_phone_campany.text,
             textField_owner.text,
             textField_id_num.text,
             textField_birth.text,
             textField_address_owner.text,
             textField_phone_owner.text,
             textField_unit_price.text,
             textField_deposit.text,
             textField_delivery.text,
             textField_last_pay.text];
        }

    }
    
    
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
