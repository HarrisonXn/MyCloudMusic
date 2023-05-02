//
//  LoginStatusChangedEvent.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginStatusChangedEvent : NSObject<QTEvent>
/// 是否登录了
@property(nonatomic, assign) BOOL isLogin;
@end

NS_ASSUME_NONNULL_END
