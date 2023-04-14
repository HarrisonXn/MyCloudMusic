//
//  DefaultRepository.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/13.
//

#import "DefaultRepository.h"

@implementation DefaultRepository

+(instancetype)shared{
    static DefaultRepository *instance = nil ;//1.声明一个空的静态的单例对象
    static dispatch_once_t onceToken; //2.声明一个静态的gcd的单次任务
    dispatch_once(&onceToken, ^{ //3.执行gcd单次任务：对对象进行初始化
        if (instance == nil) {
            instance = [[DefaultRepository alloc] init];
        }
    });
  return instance;
}

#pragma mark - 视频
/// 视频列表
-(void)videos:(int)page success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Video class] url:URL_VIDEO parameters:@{@"page":[NSNumber numberWithInt:page]} success:success];
}
/// 视频详情
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success{
    [SuperHttpUtil requestObjectWith:[Video class] url:URL_VIDEO id:id success:success];
}
@end
