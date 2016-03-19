//
//  ViewController.m
//  本地推送
//
//  Created by yeyuban on 16/3/19.
//  Copyright © 2016年 LM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)addLocalNoti:(UIButton *)sender {
    
    UILocalNotification *localNote = [UILocalNotification new];
    //通知发出时间
    localNote.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    
    //通知发出的内容
    localNote.alertBody = @"下课了吗";
    
    //是否弹出提示框
//    localNote.hasAction = YES;
    
    //启动的音效
  //  localNote.soundName = UILocalNotificationDefaultSoundName;
    
    //图标提醒的数字
   // localNote.applicationIconBadgeNumber = 999;
    
    //如果想将通知的消息传递过去必须用userinfo
    // localNote.userInfo = @{@"msg":@" 下课了吗",@"date":localNote.fireDate};
    //调度通知
    [[UIApplication sharedApplication] scheduleLocalNotification:localNote];
    
    //[[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
    
}
- (IBAction)removeLocalNoti:(UIButton *)sender {
    
    [[UIApplication sharedApplication]cancelAllLocalNotifications];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
