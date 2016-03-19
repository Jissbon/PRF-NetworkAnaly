//
//  NewsNetManager.h
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "VieoModel.h"
#import "NSObject+Network.h"

#define kcompetionHandle  competionHandle:(void(^)(id model,NSError *error))competionHandle;

@interface NewsNetManager : BaseNetManager


+(id)getVieoWithStartIndex:(NSInteger)startIndex kcompetionHandle


@end
