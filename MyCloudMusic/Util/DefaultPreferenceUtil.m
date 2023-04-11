//
//  DefaultPreferenceUtil.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/11.
//

#import "DefaultPreferenceUtil.h"

//定义一个常量，因为文件中多次调用这个键
static NSString * const TERMS_SERVICE = @"TERMS_SERVICE";

@implementation DefaultPreferenceUtil
///通过用户偏好设置的单例来获取是否同意‘用户协议’键的值
///然后做逻辑判断
+(BOOL)isAcceptTermsServiceAgreement{
    if ([[NSUserDefaults standardUserDefaults] objectForKey:TERMS_SERVICE] == nil) {
        //默认值
        return NO;
    } else {
        return [[NSUserDefaults standardUserDefaults] boolForKey:TERMS_SERVICE];
    }
}

+(void)setAcceptTermsServiceAgreement:(BOOL)data{
    //保存值
    [[NSUserDefaults standardUserDefaults] setBool:data forKey:TERMS_SERVICE];
    
    //同步，相当于写到文件(改变了用户偏好设置就要同步）
    [NSUserDefaults.standardUserDefaults synchronize];
}
@end
