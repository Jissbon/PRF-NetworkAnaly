//
//  NSObject+Network.h
//  
//
//  Created by 业余班 on 16/3/16.
//
//

#import <Foundation/Foundation.h>
/*
 请求类型：Get Post
 Get:传递小型数据的
 Post:传递大型数据，转zip/图片/音乐...
 具体用什么请求是由服务器决定的
 */

#define kcompetionHandle  competionHandle:(void(^)(id model,NSError *error))competionHandle;

@interface NSObject (Network)


+(id)GET:(NSString *)path paremeters:(NSDictionary *)params kcompetionHandle

+(id)POST:(NSString *)path paremeters:(NSDictionary *)params kcompetionHandle

@end
