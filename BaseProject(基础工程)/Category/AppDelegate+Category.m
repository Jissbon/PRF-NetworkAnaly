//
//  AppDelegate+Category.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "AppDelegate+Category.h"

@implementation AppDelegate (Category)


- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"0000000");//应用即将推出前台时执行
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"1111111");//应用在后台时运行
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"2222222");//应用进入前台时执行
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"3333333");//应用启动时执行

    }

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"4444444");//退出应用的时候执行
}


@end
