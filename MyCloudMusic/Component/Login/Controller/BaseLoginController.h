//
//  BaseLoginController.h
//  MyCloudMusic
//  用户登录相关公共界面
//  Created by 邢世航 on 2023/4/30.
//

#import "BaseTitleController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseLoginController : BaseTitleController
/// 登录
/// @param data <#data description#>
-(void)login:(User *)data;

@end

NS_ASSUME_NONNULL_END
