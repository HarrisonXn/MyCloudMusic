//
//  SuperWebController.h
//  MyCloudMusic
//  通用WebView界面
//  Created by 邢世航 on 2023/4/26.
//


//Web框架
#import <WebKit/WebKit.h>

#import "BaseTitleController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperWebController : BaseTitleController
/**
 显示标题
 */
@property(nonatomic, strong) NSString *myTitle;
/**
 显示Uri
 */
@property NSString *uri;
/**
 显示内容
 */
@property NSString *content;
/**
 webView
 */
@property (strong, nonatomic) WKWebView *webView;
/// 显示网址
/// @param controller <#controller description#>
/// @param title <#title description#>
/// @param uri <#uri description#>
+ (void)start:(UINavigationController *)controller title:(nullable NSString *)title uri:(NSString *)uri;

/// 显示字符串
/// @param controller <#controller description#>
/// @param title <#title description#>
/// @param content <#content description#>
+ (void)start:(UINavigationController *)controller title:(nullable NSString *)title content:(NSString *)content;
@end

NS_ASSUME_NONNULL_END
