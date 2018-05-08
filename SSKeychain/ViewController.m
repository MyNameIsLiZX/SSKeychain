//
//  ViewController.m
//  SSKeychain
//
//  Created by twzs on 2018/5/8.
//  Copyright © 2018年 LZX. All rights reserved.
//

#import "ViewController.h"
#import "SSKeychain.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*************************************************************************************************************************************************************记得开启钥匙串访问***************************************************/
    
    // 获取所有钥匙串账号
    NSLog(@"%@",[SSKeychain allAccounts]);
    
    // 读取密码
    [SSKeychain passwordForService:@"lzx_test" account:@"lzx"];
    
    /* 储存密码
     1. 密码明文
     2. 服务, app标识, 建议使用BundleID
     3. 账号, 用户名
     */
    [SSKeychain setPassword:@"123456" forService:@"lzx_test" account:@"lzx"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
