//
//  ResourceUtil.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResourceUtil : NSObject
/// 将相对资源转为绝对路径
/// @param data <#data description#>
+(NSString *)resourceUri:(NSString *)data;
@end

NS_ASSUME_NONNULL_END
