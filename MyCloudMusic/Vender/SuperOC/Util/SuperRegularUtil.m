//
//  SuperRegularUtil.m
//  MyCloudMusic
//  正则表达式相关方法
//  Created by 邢世航 on 2023/4/30.
//

#import "SuperRegularUtil.h"

/// 手机号
/// 移动：134 135 136 137 138 139 147 150 151 152 157 158 159 178 182 183 184 187 188 198
/// 联通：130 131 132 145 155 156 166 171 175 176 185 186
/// 电信：133 149 153 173 177 180 181 189 199
/// 虚拟运营商: 170
static NSString * const REG_PHONE = @"^(0|86|17951)?(13[0-9]|15[012356789]|16[6]|19[89]]|17[01345678]|18[0-9]|14[579])[0-9]{8}$";

/// 邮箱
static NSString * const REG_EMALL = @"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$";

@implementation SuperRegularUtil

+(BOOL)isPhone:(NSString *)data{
    NSPredicate *targetPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", REG_PHONE];
    return [targetPredicate evaluateWithObject:data];
}

+(BOOL)isEmail:(NSString *)data{
    NSPredicate *targetPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", REG_EMALL];
    return [targetPredicate evaluateWithObject:data];
}
@end
