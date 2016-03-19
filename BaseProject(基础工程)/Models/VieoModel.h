//
//  VieoModel.h
//  BaseProject(基础工程)
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseModel.h"
//1.遇到字典新建模型类
//2.解析由底层往上解析
//http://c.m.163.com/nc/video/home/1-10.html

@class Videosidlist,Videolist;



@interface VieoModel : BaseModel

@property (nonatomic, copy) NSString *videoHomeSid;
@property (nonatomic, strong) NSArray<Videosidlist *> *videoSidList;
@property (nonatomic, strong) NSArray<Videolist *> *videoList;

@end



@interface Videosidlist : NSObject

@property (nonatomic, copy) NSString *sid;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imgsrc;

@end

@interface Videolist : NSObject
@property (nonatomic, copy) NSString *ptime;
@property (nonatomic, copy) NSString *videosource;
@property (nonatomic, copy) NSString *topicImg;
@property (nonatomic, copy) NSString *topicSid;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *sectiontitle;
@property (nonatomic, copy) NSString *vid;
@property (nonatomic, copy) NSString *m3u8_url;
@property (nonatomic, assign) NSInteger playersize;
@property (nonatomic, copy) NSString *topicName;
@property (nonatomic, assign) NSInteger replyCount;
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, copy) NSString *replyBoard;
@property (nonatomic, assign) NSInteger playCount;
@property (nonatomic, assign) NSInteger length;
@property (nonatomic, copy) NSString *topicDesc;
@property (nonatomic, copy) NSString *mp4Hd_url;
@property (nonatomic, copy) NSString *replyid;
@property (nonatomic, copy) NSString *m3u8Hd_url;
@property (nonatomic, copy) NSString *mp4_url;
@property (nonatomic, copy) NSString *desc;

@end

