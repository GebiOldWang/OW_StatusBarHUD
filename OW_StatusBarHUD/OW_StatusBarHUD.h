//
//  OW_StatusBarHUD.h
//  OW_StatusBarHUD
//
//  Created by 上海银来（集团）有限公司 on 16/4/5.
//  Copyright © 2016年 Old.Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OW_StatusBarHUD : NSObject
//  显示信息
+(void)ow_showMsg:(NSString *)string;
//  带图片的信息
+(void)ow_showMsg:(NSString *)string image:(UIImage *)image;
//  加载成功
+(void)ow_showSuccess:(NSString *)string;
//  加载成功
+(void)ow_showError:(NSString *)string;
//  加载成功
+(void)ow_showLoading:(NSString *)string;
//  隐藏
+(void)ow_hide;

@end
