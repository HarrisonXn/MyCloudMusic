//
//  DefaultPreferenceUtil.h
//  MyCloudMusic
//  创建两个函数：1、获取用户是否同意用户协议 2、设置用户同意用户协议
//  Created by 邢世航 on 2023/4/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DefaultPreferenceUtil : NSObject
/// 是否同意了用户条款
+(BOOL)isAcceptTermsServiceAgreement;

/// 设置同意了用户协议
/// @param data <#data description#>
+(void)setAcceptTermsServiceAgreement:(BOOL)data;
@end

NS_ASSUME_NONNULL_END
