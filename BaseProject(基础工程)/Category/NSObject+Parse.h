//
//  NSObject+Parse.h
//  
//
//  Created by apple on 16/3/19.
//
//

#import <Foundation/Foundation.h>
/*
 1.解析类，解析的对象就两种：NSDictionary ,NSArray
 2.每个解析类都会有一个parse方法，传入字典、数组，返回当前对象
 3.解析key不存在，value不存在导致的崩溃问题（防御性编程）
 4.考虑key 和系统关键字冲突
 5.考虑解析中存在的数组问题
 */

@interface NSObject (Parse)

+(id)par:(id)responseObj;

/*
 子类重写下面方法返回某个key 所对应的property
 key:description property:desc
 */
+(NSString *)replacePropertyForKey:(NSString*)key;

/*数组类型的解析问题
 数组类型的key:应该由规定类来解析
 比如:key=videoSidList ,value = [VideoSidList class]
 */
+(NSDictionary *)keyvalueisClassAsArray;

@end
