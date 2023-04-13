//
//  SuperHttpUtil.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/13.
//

#import "SuperHttpUtil.h"

@implementation SuperHttpUtil
#pragma mark - 请求对象

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url id:(NSString *)id  success:(SuperHttpSuccess)success{
    [self requestObjectWith:clazz url:[NSString stringWithFormat:@"%@/%@",url,id] parameters:nil cachePolicy:MSCachePolicyOnlyNetNoCache loading:NO controller:nil success:success failure:nil];
}

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters  success:(SuperHttpSuccess)success{
    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:MSCachePolicyOnlyNetNoCache loading:NO controller:nil success:success failure:nil];
}

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success{
    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:cachePolicy loading:loading controller:controller success:success failure:nil];
}

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure{
    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:cachePolicy method:MSRequestMethodGET loading:loading controller:controller success:success failure:failure];
}

#pragma mark - post请求对象

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure{
    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:MSCachePolicyOnlyNetNoCache method:MSRequestMethodPOST loading:loading controller:controller success:success failure:failure];
}

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable id)parameter success:(SuperHttpSuccess)success{

    [self postObjectWith:clazz url:url parameter:parameter success:success failure:nil];
}

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable SuperBase *)parameter success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure{

    //将参数对象转为字典
    //当然也可以让外界直接传递字典，只是这样外界不太方便管理
    NSDictionary *parameters = parameter.mj_keyValues;

    [self postObjectWith:clazz url:url parameters:parameters loading:NO controller:nil success:success failure:nil];
}

#pragma mark - patch请求对象

+ (void)patchObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable SuperBase *)parameter success:(SuperHttpSuccess)success{

    //将参数对象转为字典
    //当然也可以让外界直接传递字典，只是这样外界不太方便管理
    NSDictionary *parameters = parameter.mj_keyValues;

    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:MSCachePolicyOnlyNetNoCache method:MSRequestMethodPATCH loading:NO controller:nil success:success failure:nil];
}

#pragma mark - delete请求对象

+ (void)deleteWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters  success:(SuperHttpSuccess)success{
    [self requestObjectWith:clazz url:url parameters:parameters cachePolicy:MSCachePolicyOnlyNetNoCache method:MSRequestMethodDELETE loading:NO controller:nil success:success failure:nil];
}

#pragma mark - 通用请求对象

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy method:(MSRequestMethod)method loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(SuperHttpFail)failure{
    //检查是否显示Loading
    [self checkShowLoading:loading];
    
    //前置处理
    [self preProcess:controller];
    
    [self requestWithMethod:method url:url parameters:parameters cachePolicy:cachePolicy success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull data) {
        //解析为BaseResponse
        BaseResponse *baseResponse=[[BaseResponse class] mj_objectWithKeyValues:data];
        
        //检查是否隐藏Loading
        [self checkHideLoading:loading];
        
        if ([self isSuccessWithResponse:baseResponse]) {
            //请求成功
            
            //默认data字段有值，因为对于get请求来说，我们默认必须有返回值
            //那如果项目中有这种请求，还需要特殊处理
            //像统计这类api，用post，但有些就是get
            id dataDict=data[@"data"];
            
            //将字典解析为模型
            id result=[clazz mj_objectWithKeyValues:dataDict];
            
            //回调block
            success(baseResponse,result);
        } else {
            //业务请求失败，例如：服务端返回密码错误
            [self handlerResponse:baseResponse error:nil failure:failure task:task placeholder:nil];
        }
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        //检查是否隐藏Loading
        [self checkHideLoading:loading];
        
        //像网络错误，服务端返回401，400，500等都会都在这里
        NSLog(@"SuperHttpUtil failure %@",error);
        [self handlerResponse:nil error:error failure:failure task:task placeholder:nil];
    }];
}
#pragma mark - 辅助方法
+(void)checkShowLoading:(BOOL)loading{
    
}

+(void)checkHideLoading:(BOOL)loading{
    
}

+(void)preProcess:(BaseLogicController *)controller{
    
}

+(BOOL)isSuccessWithResponse:(BaseResponse *)data{
    //判断对于业务逻辑是否请求正常
    //也就是判断data里面的status
    
    //int,long，double等从字典里面取出来是NSNumber
//    NSNumber *status=data[@"status"];
//    if (status.intValue==0) {
//        return YES;
//    }
    
    return data.status==0;
}

/// 尝试处理错误网络请求
/// @param data <#data description#>
/// @param error <#error description#>
+(void)handlerResponse:(BaseResponse *)data error:(NSError *)error failure:(SuperHttpFail)failure task:(NSURLSessionDataTask *)task placeholder:(nullable NSObject *)placeholder{
    
}

#pragma mark - 统一网络请求方法
+ (void)requestWithMethod:(MSRequestMethod)method url:(NSString *)url  parameters:(NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy success:(MSHttpSuccess)success  failure:(MSHttpFail)failure{
    // 发起请求
    [MSNetwork HTTPWithMethod:method url:url parameters:parameters headers:nil cachePolicy:cachePolicy success:^(NSURLSessionDataTask *task,id  _Nonnull responseObject) {
        success(task,responseObject);
    } failure:^(NSURLSessionDataTask *task,NSError * _Nonnull error) {
        failure(task,error);
    }];
}

@end
