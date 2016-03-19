//
//  ViewController.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/13.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "NewsNetManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NewsNetManager getVieoWithStartIndex:1 competionHandle:^(id model, NSError *error) {
        if (!error) {
            NSLog(@"model:%@",model);
        } 
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}

@end
