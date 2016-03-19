//
//  NSObject+Parse.m
//  
//
//  Created by apple on 16/3/19.
//
//

#import "NSObject+Parse.h"

@implementation NSObject (Parse)


+(id)par:(id)responseObj
{
    if ([responseObj isKindOfClass:[NSArray class]]) {
        return [self parArr:responseObj];
    }else{
        return [self parDic:responseObj];
    }
    return responseObj;
}


+(id)parArr:(NSArray *)array{
    NSMutableArray  *arr = [NSMutableArray array];
    for (id obj in array) {
        [arr addObject:obj];
    }
    return [arr copy];
}

+(id)parDic:(NSDictionary *)dic
{
    id model = [self new];
    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        //考虑key问题
        key = [self replacePropertyForKey:key];
        
        //考虑value是数组的问题
        if ([obj isKindOfClass:[NSArray class]]) {
            //由子类重写的方法中获取array的key所对应的解析类
            Class class = [self keyvalueisClassAsArray][key];
            if (class) {
                obj = [class par:obj];
            }
        }
        [model setValue:obj forKey:key];
    }];           
    return model;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
  
    
}

-(void)setNilValueForKey:(NSString *)key
{
    
}

+(NSString *)replacePropertyForKey:(NSString*)key
{
    if ([key isEqualToString:@"id"]) {
        key = @"ID";
    }else if ([key isEqualToString:@"description"]){
        key = @"desc";
    }
    
    return key;
}

+(NSDictionary *)keyvalueisClassAsArray{
    
    return nil;
}




@end
