//
//  Config.h
//  MyCloudMusic
//  配置文件
//  例如：API地址，QQ等第三方服务配置信息等
//  Created by 邢世航 on 2023/4/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
#pragma mark - 端点

//本地开发环境，模拟器
//static NSString * const ENDPOINT = @"http://localhost:8080/";

//本地开发环境，局域网真机
//static NSString * const ENDPOINT = @"http://192.168.50.139:8080/";

//开发环境
static NSString * const ENDPOINT = @"http://my-cloud-music-api-sp3-dev.ixuea.com/";

#pragma mark - 资源端点
static NSString * const RESOURCE_ENDPOINT = @"http://course-music-dev.ixuea.com/";

//服务协议地址
static NSString * const URI_SERVICE = @"http://www.ixuea.com/articles/4449";

//隐私政策地址
static NSString * const URI_PRIVACY = @"http://www.ixuea.com/articles/4467";
@interface Config : NSObject

@end

NS_ASSUME_NONNULL_END
