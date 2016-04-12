//
//  ViewController.m
//  OW_StatusBarHUD
//
//  Created by 上海银来（集团）有限公司 on 16/4/5.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import "ViewController.h"
#import "OW_StatusBarHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [OW_StatusBarHUD ow_showSuccess:@"成功"];
}

@end
