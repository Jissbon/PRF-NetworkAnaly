//
//  NSObject+Network.m
//  
//
//  Created by 业余班 on 16/3/16.
//
//

#import "NSObject+Network.h"

static AFHTTPSessionManager *manager;

@implementation NSObject (Network)

+(AFHTTPSessionManager *)shareAFManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [AFHTTPSessionManager manager];
        manager.requestSerializer.timeoutInterval = 30;
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/json",@"text/javascript",@"text/plain",nil];
//        [manager.requestSerializer setValue:nil forHTTPHeaderField:nil];
    });
    return manager;
}

+(id)GET:(NSString *)path paremeters:(NSDictionary *)params kcompetionHandle{
    return [[self shareAFManager] GET:path parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        competionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        competionHandle(nil,error);
    }];
}

+(id)POST:(NSString *)path paremeters:(NSDictionary *)params kcompetionHandle{
    
    return [[self shareAFManager] POST:path parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        competionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        competionHandle(nil,error);
    }];
}
@end
