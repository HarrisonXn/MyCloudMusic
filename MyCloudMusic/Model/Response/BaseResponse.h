//
//  BaseResponse.h
//  MyCloudMusic
//  通用网络请求响应模型
//  这两个数据是接口中返回的两个数据字段，messsage只在出错时有
//  Created by 邢世航 on 2023/4/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseResponse : NSObject
/// 状态码
/// 等于0表示成功
@property (nonatomic, assign) int status;

/// 出错的提示信息
/// 发生了错误不一定有
@property (nonatomic, strong) NSString *message;
@end

NS_ASSUME_NONNULL_END
