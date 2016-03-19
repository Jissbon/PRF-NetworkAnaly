//
//  NewsNetManager.m
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NewsNetManager.h"
#import "NewsUrls.h"




@implementation NewsNetManager


+(id)getVieoWithStartIndex:(NSInteger)startIndex competionHandle:(void (^)(id model, NSError *error))competionHandle
{
    NSString *path = [NSString stringWithFormat:kNewURL,startIndex];
    return [self GET:path paremeters:nil competionHandle:^(id model, NSError *error) {
        competionHandle([VieoModel par:model],error);
        id model2 = [VieoModel par:model];
        NSLog(@"%@",model2);
    }];
}
@end
