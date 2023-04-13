//
//  SuperHttpUtil.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/13.
//
//网络框架
#import "MSNetwork.h"

//JSON解析框架
#import <MJExtension/MJExtension.h>

#import <Foundation/Foundation.h>

#import "BaseLogicController.h"
#import "BaseResponse.h"
#import "Meta.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperHttpUtil : NSObject

///请求成功block
///通过参数1可以获取到响应码，提示信息，方便外界进一步处理
///参数2是传递的模型，如果是对象请求就是对象，如果是列表是NSArray
typedef void(^SuperHttpSuccess)(BaseResponse *baseResponse,id data);

///列表请求成功block
typedef void(^SuperHttpListSuccess)(BaseResponse *baseResponse,Meta *meta,NSArray *data);

///请求的失败Block
typedef BOOL(^SuperHttpFail)(BaseResponse * _Nullable baseResponse,NSError *error);

#pragma mark - 请求对象
+ (void)requestObjectWith:(Class)clazz url:(NSString *)url id:(NSString *)id  success:(SuperHttpSuccess)success;

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters  success:(SuperHttpSuccess)success;

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success;

+ (void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure;

#pragma mark - post请求对象

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure;

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable id)parameter success:(SuperHttpSuccess)success;

+ (void)postObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable SuperBase *)parameter success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure;

#pragma mark - patch请求对象

+ (void)patchObjectWith:(Class)clazz url:(NSString *)url parameter:(nullable SuperBase *)parameter success:(SuperHttpSuccess)success;

#pragma mark - delete请求对象

+ (void)deleteWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters  success:(SuperHttpSuccess)success;


/// 请求对象
/// @param clazz 对象模型class
/// @param url 请求地址，只写后面相对地址
/// @param parameters 参数字典
/// @param cachePolicy 缓存策略
/// @param method 请求方式
/// @param loading 是否显示loading
/// @param controller 这里还依赖Controller的原因是，后面可能还要添加加载失败后，点击重新加载功能，他就需要拿到当前界面的根View，所以就依赖的Controller；同时以后还可以在该Controller中添加更多的方法，也可以将网络开始请求，结束请求代理到Controller中，这样不同的Controller还可以显示不同的效果
/// 由于这不是一个完整讲架构的课程，所以有些关于架构方面的就讲解很深
/// @param success 成功回调
/// @param failure 失败回调
+(void)requestObjectWith:(Class)clazz url:(NSString *)url parameters:(nullable NSDictionary *)parameters cachePolicy:(MSCachePolicy)cachePolicy method:(MSRequestMethod)method loading:(BOOL)loading controller:(BaseLogicController *)controller success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure;
@end

NS_ASSUME_NONNULL_END
