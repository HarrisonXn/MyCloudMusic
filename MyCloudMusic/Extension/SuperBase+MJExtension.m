//
//  SuperBase+MJExtension.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

//JSON解析框架
#import <MJExtension/MJExtension.h>

#import "SuperBase+MJExtension.h"

@implementation SuperBase (MJExtension)
/// 属性映射规则
/// @param propertyName <#propertyName description#>
+ (NSString *)mj_replacedKeyFromPropertyName121:(NSString *)propertyName
{
    // nickName -> nick_name
    return [propertyName mj_underlineFromCamel];
}

@end
