//
//  OW_StatusBarHUD.m
//  OW_StatusBarHUD
//
//  Created by 上海银来（集团）有限公司 on 16/4/5.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import "OW_StatusBarHUD.h"

static CGFloat const DelayTime = 2.0 ;
static CGFloat const AnimationDuration = 0.25 ;

@implementation OW_StatusBarHUD

static UIWindow * window_;
static NSTimer * timer_;

+(void)showWindow
{
    CGRect frame = CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 20);
    window_.hidden = YES;
    window_ = [[UIWindow alloc] init];
    window_.backgroundColor = [UIColor blackColor];
    window_.windowLevel = UIWindowLevelAlert;
    window_.frame = frame;
    window_.hidden = NO;
    
    frame.origin.y = 0;
    [UIView animateWithDuration:AnimationDuration animations:^{
        window_.frame = frame;
    }];
}

+(void)ow_showMsg:(NSString *)string
{
    [self ow_showMsg:string image:nil];
}

+(void)ow_showMsg:(NSString *)string image:(UIImage *)image
{
    [self showWindow];
//    销毁定时器
    [timer_ invalidate];
    
    UIButton * button = [UIButton buttonWithType:0];
    button.frame= window_.bounds;
    [button setTitle:string forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:13];
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    }
    [window_ addSubview:button];
//    开启延时效果
    timer_ = [NSTimer scheduledTimerWithTimeInterval:DelayTime target:self selector:@selector(ow_hide) userInfo:nil repeats:NO];
}

+(void)ow_showSuccess:(NSString *)string
{
    [self ow_showMsg:string image:[UIImage imageNamed:@"OW_StatusBarHUD.bundle/success_32px"]];
}

+(void)ow_showError:(NSString *)string
{
    [self ow_showMsg:string image:[UIImage imageNamed:@"OW_StatusBarHUD.bundle/error_32px"]];
}

+(void)ow_showLoading:(NSString *)string
{
    [self showWindow];
    [timer_ invalidate];
    timer_ = nil ;
    
    // 添加文字
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:13];
    label.frame = window_.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = string;
    label.textColor = [UIColor whiteColor];
    [window_ addSubview:label];
    
    // 添加圈圈
    UIActivityIndicatorView *loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [loadingView startAnimating];
    // 文字宽度
    CGFloat stringW = [string sizeWithAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:13]}].width;
    CGFloat centerX = (window_.frame.size.width - stringW) * 0.5 - 20;
    CGFloat centerY = window_.frame.size.height * 0.5;
    loadingView.center = CGPointMake(centerX, centerY);
    [window_ addSubview:loadingView];

}

+(void)ow_hide
{
    [UIView animateWithDuration:AnimationDuration animations:^{
        CGRect frame = window_.frame ;
        frame.origin.y = -20;
        window_.frame = frame;
    } completion:^(BOOL finished) {
        window_.hidden = YES;
        window_ = nil ;
        timer_ = nil ;
    }];
}

@end
