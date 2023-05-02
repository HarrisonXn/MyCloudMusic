//
//  SuperRegularUtil.h
//  MyCloudMusic
//  正则表达式相关方法
//  Created by 邢世航 on 2023/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperRegularUtil : NSObject
/// 是否符合手机号格式
/// @param data <#data description#>
+(BOOL)isPhone:(NSString *)data;

/// 是否符合邮箱格式
/// @param data <#data description#>
+(BOOL)isEmail:(NSString *)data;
@end

NS_ASSUME_NONNULL_END
