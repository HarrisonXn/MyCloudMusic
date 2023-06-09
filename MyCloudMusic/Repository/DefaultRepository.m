//
//  DefaultRepository.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/13.
//

#import "DefaultRepository.h"
#import "Session.h"
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
    //[SuperHttpUtil requestObjectWith:[Video class] url:URL_VIDEO id:id success:success];
    [SuperHttpUtil requestObjectWith:[Video class] url:[NSString stringWithFormat:@"%@/%@",URL_VIDEO] parameters:nil cachePolicy:MSCachePolicyOnlyNetNoCache loading:YES controller:nil success:success];
}

// 视频详情，可以手动处理错误
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success  failure:(_Nullable SuperHttpFail)failure{
    
    [SuperHttpUtil requestObjectWith:[Video class] url:[NSString stringWithFormat:@"%@/%@",URL_VIDEO,id] parameters:nil cachePolicy:MSCachePolicyOnlyNetNoCache loading:YES controller:nil success:success failure:failure];
}

#pragma mark - 广告

-(void)bannerAdWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [self adsWithPosition:VALUE0 controller:controller success:success];
}

-(void)adsWithPosition:(int)position controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    //因为参数比较少，所以通过字典传递更方便
    [SuperHttpUtil requestListObjectWith:[Ad class] url:URL_AD parameters:@{@"position":[NSNumber numberWithInt:position]} cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}

#pragma mark - 歌单
-(void)sheets:(int)size controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Sheet class] url:URL_SHEET parameters:@{@"size":[NSNumber numberWithInt:size]} cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}
#pragma mark - 单曲
-(void)songsWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Song class] url:URL_SONG parameters:nil cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}
#pragma mark - 登陆
-(void)loginWithController:(nullable BaseLogicController *)controller data:(User *)data success:(SuperHttpSuccess)success{
    
    //参数转为字典
    NSDictionary *parameters=[data mj_keyValues];
    
    [SuperHttpUtil postObjectWith:[Session class] url:URL_SESSION parameters:parameters loading:YES controller:controller success:success failure:nil];
}
#pragma mark - 注册
-(void)userRegister:(User *)data success:(SuperHttpSuccess)success{
    [SuperHttpUtil postObjectWith:[SuperBase class] url:@"v1/users" parameter:data success:success];
}

#pragma mark - 用户
-(void)userDetailWithId:(NSString *)id success:(SuperHttpSuccess)success{
    [SuperHttpUtil requestObjectWith:[User class] url:URL_USER id:id success:success];
}

-(void)userDetailWithId:(NSString *)id nickname:(NSString *)nickname success:(SuperHttpSuccess)success{
    NSString *uri=[NSString stringWithFormat:@"%@/%@",URL_USER,id];
    
    NSDictionary *params = nil;
    if ([StringUtil isNotBlank:nickname]){
        params=@{@"nickname":nickname};
    }
    
    [SuperHttpUtil requestObjectWith:[User class] url:uri parameters:params success:success];
}

@end
