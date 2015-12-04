//
//  ViewController.m
//  CocoaPods
//
//  Created by 李洪峰 on 15/11/24.
//  Copyright (c) 2015年 LHF. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = @"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=1&category_id=0";
    
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    
    //设置传输格式是二进制
    manger.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manger GET:string parameters:nil success:^(AFHTTPRequestOperation * operation, id object) {
        
        NSLog(@"成功");
//        NSDictionary *dic  = [NSJSONSerialization JSONObjectWithData:object options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",object);
        
    } failure:^(AFHTTPRequestOperation * operatin, NSError * error) {
        
        NSLog(@"失败");
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
