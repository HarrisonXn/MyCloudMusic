//
//  User.h
//  MyCloudMusic
//  用户模型
//  Created by 邢世航 on 2023/4/25.
//

#import "SuperCommon.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : SuperCommon
/// 昵称
@property (nonatomic, strong) NSString *nickname;

/// 头像
@property (nonatomic, strong) NSString *icon;

/// 手机号
@property (nonatomic, strong) NSString *phone;

/// 邮箱
@property (nonatomic, strong) NSString *email;

/// 用户的密码,登录，注册向服务端传递
@property (nonatomic, strong) NSString *password;

/// 微信第三方登录后id
@property (nonatomic, strong) NSString *wechatId;

/// QQ第三方登录后Id
@property (nonatomic, strong) NSString *qqId;

/// 苹果第三方登录后Id
@property (nonatomic, strong) NSString *appleId;

/// 验证码
/// 只有找回密码的时候才会用到
@property (nonatomic, strong) NSString *code;

/// 省
@property (nonatomic, strong) NSString *province;

/// 省编码
@property (nonatomic, strong) NSString *provinceCode;

/// 市
@property (nonatomic, strong) NSString *city;

/// 市编码
@property (nonatomic, strong) NSString *cityCode;

/// 区
@property (nonatomic, strong) NSString *area;

/// 区编码
@property (nonatomic, strong) NSString *areaCode;

/// 我的关注的人（好友）
@property (nonatomic, assign) long followingsCount;

/// 关注我的人（粉丝）
@property (nonatomic, assign) long followersCount;

/// 是否关注
/// 1:关注
/// 在用户详情才会返回
@property (nonatomic, strong) NSString *following;

/// 性别
/// 0：保密，10：男，20：女
/// 可以定义为枚举
/// 但枚举性能没有int好
/// 但int没有一些编译验证
/// Android中有替代方式
/// 这里用不到就不讲解了
@property (nonatomic, assign) int gender;

/// 生日
/// 格式为：yyyy-MM-dd
@property (nonatomic, strong) NSString *birthday;

/// 设备名称
/// 例如：小米11
@property (nonatomic, strong) NSString *device;

/// 推送id
@property (nonatomic, strong) NSString *push;

/// 平台
/// 主要是实现同一个平台只能登录一个账号
@property (nonatomic, assign) int platform;

/// 直播间id
@property (nonatomic, strong) NSString *roomId;

/// 角色字符串，逗号分割
@property (nonatomic, strong) NSString *roles;

//本地过滤字段
/// 拼音
@property (nonatomic, strong) NSString *pinyin;

/// 拼音首字母
@property (nonatomic, strong) NSString *pinyinFirst;

/// 拼音首字母的首字母
@property (nonatomic, strong) NSString *first;
//end 本地过滤字段
@end


NS_ASSUME_NONNULL_END
