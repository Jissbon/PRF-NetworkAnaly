//
//  AppDelegate.m
//  本地推送
//
//  Created by yeyuban on 16/3/19.
//  Copyright © 2016年 LM. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    if ([UIDevice currentDevice].systemVersion.doubleValue >= 8.0) {
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeSound | UIUserNotificationTypeBadge | UIUserNotificationTypeAlert categories:nil];
        
        
        [application registerUserNotificationSettings:settings];
        
    }
    if (launchOptions[UIApplicationLaunchOptionsLocalNotificationKey]) {
        //跳转
        UILabel *label = [[UILabel alloc]init];
        label.frame = CGRectMake(0, 300, 300, 300);
        label.backgroundColor = [UIColor redColor];
        label.text = [NSString stringWithFormat:@"去死"];
        label.font = [UIFont systemFontOfSize:14];
        label.numberOfLines = 0;
        [self.window.rootViewController.view  addSubview:label];
        
        
    }
    
    
    return YES;
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{

    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, 0, 300, 300);
    label.backgroundColor = [UIColor redColor];
    label.text = [NSString stringWithFormat:@"测试测试"];
    label.font = [UIFont systemFontOfSize:14];
    label.numberOfLines = 0;
    [self.window.rootViewController.view  addSubview:label];

}



@end
