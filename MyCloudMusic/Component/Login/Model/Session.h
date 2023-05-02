//
//  Session.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface Session : SuperBase
/// 用户Id
@property(nonatomic, strong) NSString *userId;

/// 登录后的Session
@property(nonatomic, strong) NSString *session;

/// 聊天token
@property(nonatomic, strong) NSString *chatToken;
@end


NS_ASSUME_NONNULL_END
