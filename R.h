#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface RLocalizableStrings: NSObject
/**
key: "About"

zh-Hans: "关于"

en: "关于"
*/
- (NSString*)about;
/**
key: "AboutCode"

zh-Hans: "关于（纯代码布局）"

en: "关于（纯代码布局）"
*/
- (NSString*)aboutCode;
/**
key: "ActivityDetails"

zh-Hans: "活动详情"

en: "活动详情"
*/
- (NSString*)activityDetails;
/**
key: "ActivityOrderDetail"

zh-Hans: "订单详情"

en: "订单详情"
*/
- (NSString*)activityOrderDetail;
/**
key: "AdClickTip"

zh-Hans: "点击跳转详情页面查看更多"

en: "点击跳转详情页面查看更多"
*/
- (NSString*)adClickTip;
/**
key: "Add"

zh-Hans: "添加"

en: "添加"
*/
- (NSString*)add;
/**
key: "AddCart"

zh-Hans: "加入购物车"

en: "加入购物车"
*/
- (NSString*)addCart;
/**
key: "AddCartSuccess"

zh-Hans: "加入购物车成功"

en: "加入购物车成功"
*/
- (NSString*)addCartSuccess;
/**
key: "AddSuccess"

zh-Hans: "添加成功"

en: "添加成功"
*/
- (NSString*)addSuccess;
/**
key: "AddedSuccessfully"

zh-Hans: "添加成功"

en: "添加成功"
*/
- (NSString*)addedSuccessfully;
/**
key: "Agree"

zh-Hans: "同意"

en: "同意"
*/
- (NSString*)agree;
/**
key: "Alipay"

zh-Hans: "支付宝"

en: "支付宝"
*/
- (NSString*)alipay;
/**
key: "AlreadyDownloaded"

zh-Hans: "已经下载了"

en: "已经下载了"
*/
- (NSString*)alreadyDownloaded;
/**
key: "AlreadyDownloading"

zh-Hans: "已经在下载了"

en: "已经在下载了"
*/
- (NSString*)alreadyDownloading;
/**
key: "AlreadyInDownloadList"

zh-Hans: "已经在下载列表中了"

en: "已经在下载列表中了"
*/
- (NSString*)alreadyInDownloadList;
/**
key: "AmountPay"

zh-Hans: "应付金额"

en: "应付金额"
*/
- (NSString*)amountPay;
/**
key: "Area"

zh-Hans: "地区"

en: "地区"
*/
- (NSString*)area;
/**
key: "AvailableCount"

zh-Hans: "%d张可用"

en: "%d张可用"
*/
- (NSString*)availableCount;
- (NSString*)availableCount:(NSInteger)value1;
/**
key: "Avatar"

zh-Hans: "头像"

en: "头像"
*/
- (NSString*)avatar;
/**
key: "BatchEdit"

zh-Hans: "批量编辑"

en: "批量编辑"
*/
- (NSString*)batchEdit;
/**
key: "Bind"

zh-Hans: "绑定"

en: "绑定"
*/
- (NSString*)bind;
/**
key: "BindError"

zh-Hans: "绑定失败"

en: "绑定失败"
*/
- (NSString*)bindError;
/**
key: "Birthday"

zh-Hans: "生日"

en: "生日"
*/
- (NSString*)birthday;
/**
key: "Brand"

zh-Hans: "品牌"

en: "品牌"
*/
- (NSString*)brand;
/**
key: "BuyCount"

zh-Hans: "%1$d人购买"

en: "%1$d人购买"
*/
- (NSString*)buyCount;
- (NSString*)buyCount:(NSInteger)value1;
/**
key: "BuyNow"

zh-Hans: "立即购买"

en: "立即购买"
*/
- (NSString*)buyNow;
/**
key: "BuyVip"

zh-Hans: "开通黑胶VIP"

en: "开通黑胶VIP"
*/
- (NSString*)buyVip;
/**
key: "CacheWhileList"

zh-Hans: "边听边缓存"

en: "边听边缓存"
*/
- (NSString*)cacheWhileList;
/**
key: "CallMethod1"

zh-Hans: "调用方法1"

en: "调用方法1"
*/
- (NSString*)callMethod1;
/**
key: "CallMethod2"

zh-Hans: "调用方法2"

en: "调用方法2"
*/
- (NSString*)callMethod2;
/**
key: "CancelCollect"

zh-Hans: "取消收藏(%1$d)"

en: "取消收藏(%1$d)"
*/
- (NSString*)cancelCollect;
- (NSString*)cancelCollect:(NSInteger)value1;
/**
key: "CancelEdit"

zh-Hans: "取消编辑"

en: "取消编辑"
*/
- (NSString*)cancelEdit;
/**
key: "CancelFollow"

zh-Hans: "取消关注"

en: "取消关注"
*/
- (NSString*)cancelFollow;
/**
key: "CancelOrder"

zh-Hans: "取消订单"

en: "取消订单"
*/
- (NSString*)cancelOrder;
/**
key: "CancelSelectAll"

zh-Hans: "取消全选"

en: "取消全选"
*/
- (NSString*)cancelSelectAll;
/**
key: "CancelSuccess"

zh-Hans: "取消成功"

en: "取消成功"
*/
- (NSString*)cancelSuccess;
/**
key: "ChangeAddress"

zh-Hans: "修改地址"

en: "修改地址"
*/
- (NSString*)changeAddress;
/**
key: "ChangeContent"

zh-Hans: "换一批内容"

en: "换一批内容"
*/
- (NSString*)changeContent;
/**
key: "ChangeStyle"

zh-Hans: "切换样式"

en: "切换样式"
*/
- (NSString*)changeStyle;
/**
key: "ClickDownload"

zh-Hans: "已暂停，点击继续下载"

en: "已暂停，点击继续下载"
*/
- (NSString*)clickDownload;
/**
key: "ClickRefresh"

zh-Hans: "点击刷新"

en: "点击刷新"
*/
- (NSString*)clickRefresh;
/**
key: "CloseApp"

zh-Hans: "关闭应用"

en: "关闭应用"
*/
- (NSString*)closeApp;
/**
key: "Collect"

zh-Hans: "收藏歌单(%1$d)"

en: "收藏歌单(%1$d)"
*/
- (NSString*)collect;
- (NSString*)collect:(NSInteger)value1;
/**
key: "CollectCoupon"

zh-Hans: "领券"

en: "领券"
*/
- (NSString*)collectCoupon;
/**
key: "CollectedSheet"

zh-Hans: "收藏的歌单"

en: "收藏的歌单"
*/
- (NSString*)collectedSheet;
/**
key: "CollectionSuccess"

zh-Hans: "收藏成功"

en: "收藏成功"
*/
- (NSString*)collectionSuccess;
/**
key: "Comment"

zh-Hans: "评论"

en: "评论"
*/
- (NSString*)comment;
/**
key: "CommentCreateSuccess"

zh-Hans: "评论发布成功!"

en: "评论发布成功!"
*/
- (NSString*)commentCreateSuccess;
/**
key: "Complete"

zh-Hans: "完成"

en: "完成"
*/
- (NSString*)complete;
/**
key: "CompleteRegister"

zh-Hans: "完成注册"

en: "完成注册"
*/
- (NSString*)completeRegister;
/**
key: "CompleteUserData"

zh-Hans: "完善资料"

en: "完善资料"
*/
- (NSString*)completeUserData;
/**
key: "CompleteUserDataTip"

zh-Hans: "完善资料，账号更好安全"

en: "完善资料，账号更好安全"
*/
- (NSString*)completeUserDataTip;
/**
key: "Comprehensive"

zh-Hans: "综合"

en: "综合"
*/
- (NSString*)comprehensive;
/**
key: "Confirm"

zh-Hans: "确认"

en: "确认"
*/
- (NSString*)confirm;
/**
key: "ConfirmCancelOrder"

zh-Hans: "确认取消订单吗？"

en: "确认取消订单吗？"
*/
- (NSString*)confirmCancelOrder;
/**
key: "ConfirmDeparture"

zh-Hans: "确认离开"

en: "确认离开"
*/
- (NSString*)confirmDeparture;
/**
key: "ConfirmExitPay"

zh-Hans: "确认放弃付款吗？"

en: "确认放弃付款吗？"
*/
- (NSString*)confirmExitPay;
/**
key: "ConfirmExitPayMessage"

zh-Hans: "超过订单支付时效后，订单将被取消"

en: "超过订单支付时效后，订单将被取消"
*/
- (NSString*)confirmExitPayMessage;
/**
key: "ConfirmLogout"

zh-Hans: "确认退出吗？"

en: "确认退出吗？"
*/
- (NSString*)confirmLogout;
/**
key: "ConfirmOrder"

zh-Hans: "确认订单"

en: "确认订单"
*/
- (NSString*)confirmOrder;
/**
key: "ConfirmPayPrice"

zh-Hans: "确认付款"

en: "确认付款"
*/
- (NSString*)confirmPayPrice;
/**
key: "ConfirmUnbind"

zh-Hans: "你确定解绑吗？"

en: "你确定解绑吗？"
*/
- (NSString*)confirmUnbind;
/**
key: "ContinuePay"

zh-Hans: "继续支付"

en: "继续支付"
*/
- (NSString*)continuePay;
/**
key: "CopyComment"

zh-Hans: "复制评论"

en: "复制评论"
*/
- (NSString*)copyComment;
/**
key: "CopySuccess"

zh-Hans: "拷贝成功!"

en: "拷贝成功!"
*/
- (NSString*)copySuccess;
/**
key: "Copyright"

zh-Hans: "Copyright © %d XingShiHang. All Rights Reserved"

en: "Copyright © %d XingShiHang. All Rights Reserved"
*/
- (NSString*)copyright;
- (NSString*)copyright:(NSInteger)value1;
/**
key: "CountSecond"

zh-Hans: "%1$d"

en: "%1$d"
*/
- (NSString*)countSecond;
- (NSString*)countSecond:(NSInteger)value1;
/**
key: "Coupon"

zh-Hans: "优惠券"

en: "优惠券"
*/
- (NSString*)coupon;
/**
key: "CreateSheet"

zh-Hans: "创建歌单"

en: "创建歌单"
*/
- (NSString*)createSheet;
/**
key: "CreatedSheet"

zh-Hans: "创建的歌单"

en: "创建的歌单"
*/
- (NSString*)createdSheet;
/**
key: "CurrentPosition"

zh-Hans: "当前位置"

en: "当前位置"
*/
- (NSString*)currentPosition;
/**
key: "CurrentVersion"

zh-Hans: "当前版本"

en: "当前版本"
*/
- (NSString*)currentVersion;
/**
key: "CustomDiscovery"

zh-Hans: "自定义首页"

en: "自定义首页"
*/
- (NSString*)customDiscovery;
/**
key: "CustomerService"

zh-Hans: "客服"

en: "客服"
*/
- (NSString*)customerService;
/**
key: "DarkMode"

zh-Hans: "夜间模式"

en: "夜间模式"
*/
- (NSString*)darkMode;
/**
key: "DayRecommend"

zh-Hans: "每日推荐"

en: "每日推荐"
*/
- (NSString*)dayRecommend;
/**
key: "DefaultAddress"

zh-Hans: "默认地址"

en: "默认地址"
*/
- (NSString*)defaultAddress;
/**
key: "DefaultAddressText"

zh-Hans: "[默认]"

en: "[默认]"
*/
- (NSString*)defaultAddressText;
/**
key: "Delete"

zh-Hans: "删除"

en: "删除"
*/
- (NSString*)delete;
/**
key: "DeleteAll"

zh-Hans: "全部删除"

en: "全部删除"
*/
- (NSString*)deleteAll;
/**
key: "DeleteComment"

zh-Hans: "删除评论"

en: "删除评论"
*/
- (NSString*)deleteComment;
/**
key: "DeleteOrder"

zh-Hans: "删除订单"

en: "删除订单"
*/
- (NSString*)deleteOrder;
/**
key: "Detail"

zh-Hans: "详情"

en: "详情"
*/
- (NSString*)detail;
/**
key: "DetailAddress"

zh-Hans: "详细地址"

en: "详细地址"
*/
- (NSString*)detailAddress;
/**
key: "DigitalAlbum"

zh-Hans: "数字专辑"

en: "数字专辑"
*/
- (NSString*)digitalAlbum;
/**
key: "Disagree"

zh-Hans: "不同意并退出应用"

en: "不同意并退出应用"
*/
- (NSString*)disagree;
/**
key: "Discovery"

zh-Hans: "发现"

en: "发现"
*/
- (NSString*)discovery;
/**
key: "Download"

zh-Hans: "下载"

en: "下载"
*/
- (NSString*)download;
/**
key: "DownloadAll"

zh-Hans: "全部开始"

en: "全部开始"
*/
- (NSString*)downloadAll;
/**
key: "DownloadComplete"

zh-Hans: "下载完成"

en: "下载完成"
*/
- (NSString*)downloadComplete;
/**
key: "DownloadFailed"

zh-Hans: "下载失败，点击重试"

en: "下载失败，点击重试"
*/
- (NSString*)downloadFailed;
/**
key: "DownloadManager"

zh-Hans: "下载管理"

en: "下载管理"
*/
- (NSString*)downloadManager;
/**
key: "DownloadMobileNetwork"

zh-Hans: "使用移动网络下载"

en: "使用移动网络下载"
*/
- (NSString*)downloadMobileNetwork;
/**
key: "Downloading"

zh-Hans: "正在下载"

en: "正在下载"
*/
- (NSString*)downloading;
/**
key: "Email"

zh-Hans: "邮箱"

en: "邮箱"
*/
- (NSString*)email;
/**
key: "EnterCode"

zh-Hans: "请输入验证码"

en: "请输入验证码"
*/
- (NSString*)enterCode;
/**
key: "EnterConfirmPassword"

zh-Hans: "请输入确认密码"

en: "请输入确认密码"
*/
- (NSString*)enterConfirmPassword;
/**
key: "EnterContent"

zh-Hans: "请输入内容"

en: "请输入内容"
*/
- (NSString*)enterContent;
/**
key: "EnterDescription"

zh-Hans: "请输入个人介绍"

en: "请输入个人介绍"
*/
- (NSString*)enterDescription;
/**
key: "EnterDetailAddress"

zh-Hans: "请输入详细地址"

en: "请输入详细地址"
*/
- (NSString*)enterDetailAddress;
/**
key: "EnterEmail"

zh-Hans: "请输入邮箱"

en: "请输入邮箱"
*/
- (NSString*)enterEmail;
/**
key: "EnterName"

zh-Hans: "请输入姓名"

en: "请输入姓名"
*/
- (NSString*)enterName;
/**
key: "EnterNickname"

zh-Hans: "请输入昵称(2~10位)"

en: "请输入昵称(2~10位)"
*/
- (NSString*)enterNickname;
/**
key: "EnterPassword"

zh-Hans: "请输入密码(6~15位)"

en: "请输入密码(6~15位)"
*/
- (NSString*)enterPassword;
/**
key: "EnterPhone"

zh-Hans: "请输入手机号"

en: "请输入手机号"
*/
- (NSString*)enterPhone;
/**
key: "EnterPhoneOrEmail"

zh-Hans: "请输入手机号或邮箱"

en: "请输入手机号或邮箱"
*/
- (NSString*)enterPhoneOrEmail;
/**
key: "EnterReceiveArea"

zh-Hans: "请选择收货地区"

en: "请选择收货地区"
*/
- (NSString*)enterReceiveArea;
/**
key: "EnterReceiveName"

zh-Hans: "请输入收货姓名"

en: "请输入收货姓名"
*/
- (NSString*)enterReceiveName;
/**
key: "EnterReceiveTelephone"

zh-Hans: "请输入收货电话"

en: "请输入收货电话"
*/
- (NSString*)enterReceiveTelephone;
/**
key: "EnterUsername"

zh-Hans: "请输入手机号/邮箱"

en: "请输入手机号/邮箱"
*/
- (NSString*)enterUsername;
/**
key: "ErrorCodeFormat"

zh-Hans: "验证码格式不正确"

en: "验证码格式不正确"
*/
- (NSString*)errorCodeFormat;
/**
key: "ErrorConfirmPassword"

zh-Hans: "两次密码不正确"

en: "两次密码不正确"
*/
- (NSString*)errorConfirmPassword;
/**
key: "ErrorConfirmPasswordFormat"

zh-Hans: "确认密码格式不正确"

en: "确认密码格式不正确"
*/
- (NSString*)errorConfirmPasswordFormat;
/**
key: "ErrorContentLength"

zh-Hans: "内容不能超过140字符."

en: "内容不能超过140字符."
*/
- (NSString*)errorContentLength;
/**
key: "ErrorEmailFormat"

zh-Hans: "邮箱格式不正确"

en: "邮箱格式不正确"
*/
- (NSString*)errorEmailFormat;
/**
key: "ErrorEmptyQrcode"

zh-Hans: "The QR code has no content"

en: "The QR code has no content"
*/
- (NSString*)errorEmptyQrcode;
/**
key: "ErrorMessageLogin"

zh-Hans: "登录聊天服务器失败，可以注册新账号试试，如果还有问题联系客服"

en: "登录聊天服务器失败，可以注册新账号试试，如果还有问题联系客服"
*/
- (NSString*)errorMessageLogin;
/**
key: "ErrorNetworkConnect"

zh-Hans: "Failed to connect to the server"

en: "Failed to connect to the server"
*/
- (NSString*)errorNetworkConnect;
/**
key: "ErrorNetworkNotAuth"

zh-Hans: "Login information expired"

en: "Login information expired"
*/
- (NSString*)errorNetworkNotAuth;
/**
key: "ErrorNetworkNotFound"

zh-Hans: "The content you accessed does not exist"

en: "The content you accessed does not exist"
*/
- (NSString*)errorNetworkNotFound;
/**
key: "ErrorNetworkNotPermission"

zh-Hans: "You do not have permission to access"

en: "You do not have permission to access"
*/
- (NSString*)errorNetworkNotPermission;
/**
key: "ErrorNetworkServer"

zh-Hans: "Server error"

en: "Server error"
*/
- (NSString*)errorNetworkServer;
/**
key: "ErrorNetworkTimeout"

zh-Hans: "Connection server timeout"

en: "Connection server timeout"
*/
- (NSString*)errorNetworkTimeout;
/**
key: "ErrorNetworkUnknownHost"

zh-Hans: "Server not found"

en: "Server not found"
*/
- (NSString*)errorNetworkUnknownHost;
/**
key: "ErrorNicknameFormat"

zh-Hans: "昵称格式不正确"

en: "昵称格式不正确"
*/
- (NSString*)errorNicknameFormat;
/**
key: "ErrorNotDownload"

zh-Hans: "没有下载任务"

en: "没有下载任务"
*/
- (NSString*)errorNotDownload;
/**
key: "ErrorNotSupportQRCodeFormat"

zh-Hans: "不支持该格式"
*/
- (NSString*)errorNotSupportQRCodeFormat;
/**
key: "ErrorParameter"

zh-Hans: "Local parameter error"

en: "Local parameter error"
*/
- (NSString*)errorParameter;
/**
key: "ErrorPasswordFormat"

zh-Hans: "密码格式不正确"

en: "密码格式不正确"
*/
- (NSString*)errorPasswordFormat;
/**
key: "ErrorPayCancel"

zh-Hans: "支付取消"

en: "支付取消"
*/
- (NSString*)errorPayCancel;
/**
key: "ErrorPayChannel"

zh-Hans: "支付渠道错误"

en: "支付渠道错误"
*/
- (NSString*)errorPayChannel;
/**
key: "ErrorPayFailed"

zh-Hans: "支付失败"

en: "支付失败"
*/
- (NSString*)errorPayFailed;
/**
key: "ErrorPhoneFormat"

zh-Hans: "手机号格式不正确"

en: "手机号格式不正确"
*/
- (NSString*)errorPhoneFormat;
/**
key: "ErrorResponsedecrypt"

zh-Hans: "API decryption error"

en: "API decryption error"
*/
- (NSString*)errorResponsedecrypt;
/**
key: "ErrorResponsesign"

zh-Hans: "API signature error"

en: "API signature error"
*/
- (NSString*)errorResponsesign;
/**
key: "ErrorSendMessage"

zh-Hans: "发送失败"

en: "发送失败"
*/
- (NSString*)errorSendMessage;
/**
key: "ErrorUnknown"

zh-Hans: "Unknown error"

en: "Unknown error"
*/
- (NSString*)errorUnknown;
/**
key: "ErrorUnknownFormat"

zh-Hans: "Unknown error: %\@"

en: "Unknown error: %\@"
*/
- (NSString*)errorUnknownFormat;
- (NSString*)errorUnknownFormat:(nullable NSString*)value1;
/**
key: "ErrorUploadImage"

zh-Hans: "上传图片出错"

en: "上传图片出错"
*/
- (NSString*)errorUploadImage;
/**
key: "ErrorUploadfile"

zh-Hans: "Upload file error"

en: "Upload file error"
*/
- (NSString*)errorUploadfile;
/**
key: "ErrorUsernameFormat"

zh-Hans: "用户名格式不正确"

en: "用户名格式不正确"
*/
- (NSString*)errorUsernameFormat;
/**
key: "Evaluate"

zh-Hans: "评价"

en: "评价"
*/
- (NSString*)evaluate;
/**
key: "ExperienceNow"

zh-Hans: "立即体验"

en: "立即体验"
*/
- (NSString*)experienceNow;
/**
key: "Feed"

zh-Hans: "动态"

en: "动态"
*/
- (NSString*)feed;
/**
key: "Follow"

zh-Hans: "关注用户"

en: "关注用户"
*/
- (NSString*)follow;
/**
key: "ForgotPassword"

zh-Hans: "忘记密码"

en: "忘记密码"
*/
- (NSString*)forgotPassword;
/**
key: "FreeFreight"

zh-Hans: "包邮"

en: "包邮"
*/
- (NSString*)freeFreight;
/**
key: "Freight"

zh-Hans: "运费"

en: "运费"
*/
- (NSString*)freight;
/**
key: "FunctionIntroduction"

zh-Hans: "功能介绍"

en: "功能介绍"
*/
- (NSString*)functionIntroduction;
/**
key: "Gender"

zh-Hans: "性别"

en: "性别"
*/
- (NSString*)gender;
/**
key: "GetNow"

zh-Hans: "立即领取"

en: "立即领取"
*/
- (NSString*)getNow;
/**
key: "GoBuy"

zh-Hans: "立即购买"

en: "立即购买"
*/
- (NSString*)goBuy;
/**
key: "GoPay"

zh-Hans: "去支付"

en: "去支付"
*/
- (NSString*)goPay;
/**
key: "GoStudy"

zh-Hans: "立即学习"

en: "立即学习"
*/
- (NSString*)goStudy;
/**
key: "HintComment"

zh-Hans: "请输入评论内容."

en: "请输入评论内容."
*/
- (NSString*)hintComment;
/**
key: "HintCurrentPosition"

zh-Hans: "所在位置："

en: "所在位置："
*/
- (NSString*)hintCurrentPosition;
/**
key: "HintDescription"

zh-Hans: "请向大家介绍下自己吧"

en: "请向大家介绍下自己吧"
*/
- (NSString*)hintDescription;
/**
key: "HintEnterMessage"

zh-Hans: "请输入你要发送消息"

en: "请输入你要发送消息"
*/
- (NSString*)hintEnterMessage;
/**
key: "HintEnterSheetName"

zh-Hans: "请输入歌单名称"

en: "请输入歌单名称"
*/
- (NSString*)hintEnterSheetName;
/**
key: "HintFeed"

zh-Hans: "请输入你想说的."

en: "请输入你想说的."
*/
- (NSString*)hintFeed;
/**
key: "HintForceLogout"

zh-Hans: "您的帐号在另一设备登录，您已被迫退出登录"

en: "您的帐号在另一设备登录，您已被迫退出登录"
*/
- (NSString*)hintForceLogout;
/**
key: "HintPayWait"

zh-Hans: "支付确认中"

en: "支付确认中"
*/
- (NSString*)hintPayWait;
/**
key: "HintScanMyCode"

zh-Hans: "扫描上面二维码，加我好友"
*/
- (NSString*)hintScanMyCode;
/**
key: "HintSearchValue"

zh-Hans: "搜索"

en: "搜索"
*/
- (NSString*)hintSearchValue;
/**
key: "HotComment"

zh-Hans: "精彩评论"

en: "精彩评论"
*/
- (NSString*)hotComment;
/**
key: "HuabeiStages"

zh-Hans: "花呗分期"

en: "花呗分期"
*/
- (NSString*)huabeiStages;
/**
key: "IdAsc"

zh-Hans: "Id升序"

en: "Id升序"
*/
- (NSString*)idAsc;
/**
key: "JSTest"

zh-Hans: "JS交互"

en: "JS交互"
*/
- (NSString*)jsTest;
/**
key: "JoinCount"

zh-Hans: "%d人参与"

en: "%d人参与"
*/
- (NSString*)joinCount;
- (NSString*)joinCount:(NSInteger)value1;
/**
key: "Live"

zh-Hans: "直播"

en: "直播"
*/
- (NSString*)live;
/**
key: "LoadingUpload"

zh-Hans: "上传第%d张图片."

en: "上传第%d张图片."
*/
- (NSString*)loadingUpload;
- (NSString*)loadingUpload:(NSInteger)value1;
/**
key: "LocalMusic"

zh-Hans: "本地音乐"

en: "本地音乐"
*/
- (NSString*)localMusic;
/**
key: "Login"

zh-Hans: "登录"

en: "登录"
*/
- (NSString*)login;
/**
key: "LoginError"

zh-Hans: "登录失败: %\@"

en: "登录失败: %\@"
*/
- (NSString*)loginError;
- (NSString*)loginError:(nullable NSString*)value1;
/**
key: "LoginNow"

zh-Hans: "立即登录"

en: "立即登录"
*/
- (NSString*)loginNow;
/**
key: "LoginOrRegister"

zh-Hans: "登录/注册"

en: "登录/注册"
*/
- (NSString*)loginOrRegister;
/**
key: "Logout"

zh-Hans: "退出登录"

en: "退出登录"
*/
- (NSString*)logout;
/**
key: "Mall"

zh-Hans: "官方商城"

en: "官方商城"
*/
- (NSString*)mall;
/**
key: "MapAMap"

zh-Hans: "高德地图"

en: "高德地图"
*/
- (NSString*)mapAMap;
/**
key: "MapBaidu"

zh-Hans: "百度地图"

en: "百度地图"
*/
- (NSString*)mapBaidu;
/**
key: "MapSogou"

zh-Hans: "搜狗地图"

en: "搜狗地图"
*/
- (NSString*)mapSogou;
/**
key: "MapSystem"

zh-Hans: "System Map"

en: "System Map"
*/
- (NSString*)mapSystem;
/**
key: "MapTencent"

zh-Hans: "腾讯地图"

en: "腾讯地图"
*/
- (NSString*)mapTencent;
/**
key: "Me"

zh-Hans: "我的"

en: "我的"
*/
- (NSString*)me;
/**
key: "MemberCenter"

zh-Hans: "会员中心"

en: "会员中心"
*/
- (NSString*)memberCenter;
/**
key: "More"

zh-Hans: "更多"

en: "更多"
*/
- (NSString*)more;
/**
key: "MultiSelect"

zh-Hans: "多选"

en: "多选"
*/
- (NSString*)multiSelect;
/**
key: "MusicAlarmClock"

zh-Hans: "音乐闹钟"

en: "音乐闹钟"
*/
- (NSString*)musicAlarmClock;
/**
key: "MusicCount"

zh-Hans: "(共%1$d首)"

en: "(共%1$d首)"
*/
- (NSString*)musicCount;
- (NSString*)musicCount:(NSInteger)value1;
/**
key: "MyCode"

zh-Hans: "我的二维码"

en: "我的二维码"
*/
- (NSString*)myCode;
/**
key: "MyCollect"

zh-Hans: "我的收藏"

en: "我的收藏"
*/
- (NSString*)myCollect;
/**
key: "MyCoupon"

zh-Hans: "我的优惠券"

en: "我的优惠券"
*/
- (NSString*)myCoupon;
/**
key: "MyCustomerService"

zh-Hans: "我的客服"

en: "我的客服"
*/
- (NSString*)myCustomerService;
/**
key: "MyFans"

zh-Hans: "我的粉丝"

en: "我的粉丝"
*/
- (NSString*)myFans;
/**
key: "MyFriend"

zh-Hans: "我的好友"

en: "我的好友"
*/
- (NSString*)myFriend;
/**
key: "MyMessage"

zh-Hans: "我的消息"

en: "我的消息"
*/
- (NSString*)myMessage;
/**
key: "MyOrder"

zh-Hans: "我的订单"

en: "我的订单"
*/
- (NSString*)myOrder;
/**
key: "MyProfile"

zh-Hans: "我的资料"

en: "我的资料"
*/
- (NSString*)myProfile;
/**
key: "MyRadio"

zh-Hans: "我的电台"

en: "我的电台"
*/
- (NSString*)myRadio;
/**
key: "NetworkError"

zh-Hans: "Your Network seems to be suck."

en: "Your Network seems to be suck."
*/
- (NSString*)networkError;
/**
key: "NetworkErrorClickReload"

zh-Hans: "Your Network seems suck, clicking screen retry"

en: "Your Network seems suck, clicking screen retry"
*/
- (NSString*)networkErrorClickReload;
/**
key: "Nickname"

zh-Hans: "昵称"

en: "昵称"
*/
- (NSString*)nickname;
/**
key: "NoAvailable"

zh-Hans: "无可用"

en: "无可用"
*/
- (NSString*)noAvailable;
/**
key: "NoCoupon"

zh-Hans: "无优惠券"

en: "无优惠券"
*/
- (NSString*)noCoupon;
/**
key: "NoData"

zh-Hans: "没有数据"

en: "没有数据"
*/
- (NSString*)noData;
/**
key: "NoLocalMusic"

zh-Hans: "没有本地音乐"

en: "没有本地音乐"
*/
- (NSString*)noLocalMusic;
/**
key: "NoResult"

zh-Hans: "没有内容"

en: "没有内容"
*/
- (NSString*)noResult;
/**
key: "NotFound_activity"

zh-Hans: "找不到对应的应用"

en: "找不到对应的应用"
*/
- (NSString*)notFoundActivity;
/**
key: "NotInstallMap"

zh-Hans: "请先安装对应的地图软件"

en: "请先安装对应的地图软件"
*/
- (NSString*)notInstallMap;
/**
key: "NotOpen"

zh-Hans: "未开启"

en: "未开启"
*/
- (NSString*)notOpen;
/**
key: "NotShowPosition"

zh-Hans: "不显示位置"

en: "不显示位置"
*/
- (NSString*)notShowPosition;
/**
key: "OcrError"

zh-Hans: "百度OCR错误：%\@，错误码：%d"

en: "百度OCR错误：%\@，错误码：%d"
*/
- (NSString*)ocrError;
- (NSString*)ocrError:(nullable NSString*)value1 value2:(NSInteger)value2;
/**
key: "OrderClose"

zh-Hans: "已关闭"

en: "已关闭"
*/
- (NSString*)orderClose;
/**
key: "OrderDetail"

zh-Hans: "订单详情"

en: "订单详情"
*/
- (NSString*)orderDetail;
/**
key: "OrderNo"

zh-Hans: "订单编号"

en: "订单编号"
*/
- (NSString*)orderNo;
/**
key: "OrderSource"

zh-Hans: "订单来源"

en: "订单来源"
*/
- (NSString*)orderSource;
/**
key: "OrderTime"

zh-Hans: "下单时间"

en: "下单时间"
*/
- (NSString*)orderTime;
/**
key: "Other"

zh-Hans: "其他"

en: "其他"
*/
- (NSString*)other;
/**
key: "OtherLogin"

zh-Hans: "其他登录方式"

en: "其他登录方式"
*/
- (NSString*)otherLogin;
/**
key: "Pause"

zh-Hans: "暂停"

en: "暂停"
*/
- (NSString*)pause;
/**
key: "PauseAll"

zh-Hans: "全部暂停"

en: "全部暂停"
*/
- (NSString*)pauseAll;
/**
key: "PayChannel"

zh-Hans: "支付渠道"

en: "支付渠道"
*/
- (NSString*)payChannel;
/**
key: "PayOrder"

zh-Hans: "支付订单"

en: "支付订单"
*/
- (NSString*)payOrder;
/**
key: "PayPlatform"

zh-Hans: "支付平台"

en: "支付平台"
*/
- (NSString*)payPlatform;
/**
key: "PayRemainingTime"

zh-Hans: "支付剩余时间 %\@"

en: "支付剩余时间 %\@"
*/
- (NSString*)payRemainingTime;
- (NSString*)payRemainingTime:(nullable NSString*)value1;
/**
key: "PaymentBefore"

zh-Hans: "请在%\@之前完成支付"

en: "请在%\@之前完成支付"
*/
- (NSString*)paymentBefore;
- (NSString*)paymentBefore:(nullable NSString*)value1;
/**
key: "PersonDress"

zh-Hans: "个性装扮"

en: "个性装扮"
*/
- (NSString*)personDress;
/**
key: "PersonFm"

zh-Hans: "私人FM"

en: "私人FM"
*/
- (NSString*)personFm;
/**
key: "Phone"

zh-Hans: "手机号"

en: "手机号"
*/
- (NSString*)phone;
/**
key: "PhoneLogin"

zh-Hans: "手机号登录"

en: "手机号登录"
*/
- (NSString*)phoneLogin;
/**
key: "PlayAll"

zh-Hans: "播放全部"

en: "播放全部"
*/
- (NSString*)playAll;
/**
key: "PlayHistory"

zh-Hans: "最近播放"

en: "最近播放"
*/
- (NSString*)playHistory;
/**
key: "Price"

zh-Hans: "￥%.2f"

en: "￥%.2f"
*/
- (NSString*)price;
- (NSString*)price:(double)value1;
/**
key: "PriceAsc"

zh-Hans: "价格升序"

en: "价格升序"
*/
- (NSString*)priceAsc;
/**
key: "PriceDesc"

zh-Hans: "价格降序"

en: "价格降序"
*/
- (NSString*)priceDesc;
/**
key: "PriceInt"

zh-Hans: "￥%d"

en: "￥%d"
*/
- (NSString*)priceInt;
- (NSString*)priceInt:(NSInteger)value1;
/**
key: "Product"

zh-Hans: "商品"

en: "商品"
*/
- (NSString*)product;
/**
key: "ProductCount"

zh-Hans: "x%d"

en: "x%d"
*/
- (NSString*)productCount;
- (NSString*)productCount:(NSInteger)value1;
/**
key: "ProductTotalPrice"

zh-Hans: "商品总价"

en: "商品总价"
*/
- (NSString*)productTotalPrice;
/**
key: "Publish"

zh-Hans: "发布"

en: "发布"
*/
- (NSString*)publish;
/**
key: "PublishFeed"

zh-Hans: "发动态"

en: "发动态"
*/
- (NSString*)publishFeed;
/**
key: "Qq"

zh-Hans: "QQ"

en: "QQ"
*/
- (NSString*)qq;
/**
key: "Rank"

zh-Hans: "排行榜"

en: "排行榜"
*/
- (NSString*)rank;
/**
key: "ReceiveArea"

zh-Hans: "收货地区"

en: "收货地区"
*/
- (NSString*)receiveArea;
/**
key: "ReceiveName"

zh-Hans: "收货姓名"

en: "收货姓名"
*/
- (NSString*)receiveName;
/**
key: "ReceiveTelephone"

zh-Hans: "收货电话"

en: "收货电话"
*/
- (NSString*)receiveTelephone;
/**
key: "Received"

zh-Hans: "已领取"

en: "已领取"
*/
- (NSString*)received;
/**
key: "ReceivingAddress"

zh-Hans: "收货地址"

en: "收货地址"
*/
- (NSString*)receivingAddress;
/**
key: "ReceivingAddressDetail"

zh-Hans: "收货地址详情"

en: "收货地址详情"
*/
- (NSString*)receivingAddressDetail;
/**
key: "Recognition"

zh-Hans: "识别"

en: "识别"
*/
- (NSString*)recognition;
/**
key: "RecognitionAddressTip"

zh-Hans: "粘贴文本，可以自动识别姓名，电话和地址\n例如：四川省成都市天府新区牧华路远大中央公园9栋1单元801 李薇 13141111222"

en: "粘贴文本，可以自动识别姓名，电话和地址\n例如：四川省成都市天府新区牧华路远大中央公园9栋1单元801 李薇 13141111222"
*/
- (NSString*)recognitionAddressTip;
/**
key: "Recommend"

zh-Hans: "推荐"

en: "推荐"
*/
- (NSString*)recommend;
/**
key: "RecommendSheet"

zh-Hans: "推荐歌单"

en: "推荐歌单"
*/
- (NSString*)recommendSheet;
/**
key: "RecommendSong"

zh-Hans: "推荐单曲"

en: "推荐单曲"
*/
- (NSString*)recommendSong;
/**
key: "Register2"

zh-Hans: "补充资料"

en: "补充资料"
*/
- (NSString*)register2;
/**
key: "RegisterAndLogin"

zh-Hans: "注册并登陆"

en: "注册并登陆"
*/
- (NSString*)registerAndLogin;
/**
key: "RegisterNow"

zh-Hans: "立即注册"

en: "立即注册"
*/
- (NSString*)registerNow;
/**
key: "RelatedRecomment"

zh-Hans: "相关推荐"

en: "相关推荐"
*/
- (NSString*)relatedRecomment;
/**
key: "Reply"

zh-Hans: "回复"

en: "回复"
*/
- (NSString*)reply;
/**
key: "ReplyComment"

zh-Hans: "回复评论"

en: "回复评论"
*/
- (NSString*)replyComment;
/**
key: "Reply_hint"

zh-Hans: "回复%\@: "

en: "回复%\@: "
*/
- (NSString*)replyHint;
- (NSString*)replyHint:(nullable NSString*)value1;
/**
key: "Report"

zh-Hans: "举报"

en: "举报"
*/
- (NSString*)report;
/**
key: "ReportComment"

zh-Hans: "举报评论"

en: "举报评论"
*/
- (NSString*)reportComment;
/**
key: "Resend"

zh-Hans: "重新发送"

en: "重新发送"
*/
- (NSString*)resend;
/**
key: "ResendCount"

zh-Hans: "%1$d后可重新发送"

en: "%1$d后可重新发送"
*/
- (NSString*)resendCount;
- (NSString*)resendCount:(NSInteger)value1;
/**
key: "Reset"

zh-Hans: "重置"

en: "重置"
*/
- (NSString*)reset;
/**
key: "Retry"

zh-Hans: "重试"

en: "重试"
*/
- (NSString*)retry;
/**
key: "Rlay"

zh-Hans: "播放"

en: "播放"
*/
- (NSString*)rlay;
/**
key: "SanResult"

zh-Hans: "扫描结果"

en: "扫描结果"
*/
- (NSString*)sanResult;
/**
key: "Sati"

zh-Hans: "Sati 空间"

en: "Sati 空间"
*/
- (NSString*)sati;
/**
key: "Scan"

zh-Hans: "扫一扫"

en: "扫一扫"
*/
- (NSString*)scan;
/**
key: "Search"

zh-Hans: "搜索"

en: "搜索"
*/
- (NSString*)search;
/**
key: "SearchPoi"

zh-Hans: "搜索地点"

en: "搜索地点"
*/
- (NSString*)searchPoi;
/**
key: "SecurityVerification"

zh-Hans: "安全验证"

en: "安全验证"
*/
- (NSString*)securityVerification;
/**
key: "SelectAddress"

zh-Hans: "请选择收货地址"

en: "请选择收货地址"
*/
- (NSString*)selectAddress;
/**
key: "SelectAll"

zh-Hans: "全选"

en: "全选"
*/
- (NSString*)selectAll;
/**
key: "SelectGender"

zh-Hans: "请选择性别"

en: "请选择性别"
*/
- (NSString*)selectGender;
/**
key: "SelectLocationAddress"

zh-Hans: "%d米 | %\@"

en: "%d米 | %\@"
*/
- (NSString*)selectLocationAddress;
- (NSString*)selectLocationAddress:(NSInteger)value1 value2:(nullable NSString*)value2;
/**
key: "SelectLocationNavigation"

zh-Hans: "请选择导航应用"

en: "请选择导航应用"
*/
- (NSString*)selectLocationNavigation;
/**
key: "Send"

zh-Hans: "发送"

en: "发送"
*/
- (NSString*)send;
/**
key: "SendCode"

zh-Hans: "发送验证码"

en: "发送验证码"
*/
- (NSString*)sendCode;
/**
key: "SendMessage"

zh-Hans: "发送消息"

en: "发送消息"
*/
- (NSString*)sendMessage;
/**
key: "SetPassword"

zh-Hans: "重设密码"

en: "重设密码"
*/
- (NSString*)setPassword;
/**
key: "Setting"

zh-Hans: "设置"

en: "设置"
*/
- (NSString*)setting;
/**
key: "SettleAccount"

zh-Hans: "结算"

en: "结算"
*/
- (NSString*)settleAccount;
/**
key: "SettleAccountCount"

zh-Hans: "结算(%d)"

en: "结算(%d)"
*/
- (NSString*)settleAccountCount;
- (NSString*)settleAccountCount:(NSInteger)value1;
/**
key: "Share"

zh-Hans: "分享"

en: "分享"
*/
- (NSString*)share;
/**
key: "ShareApp"

zh-Hans: "分享我的云音乐"

en: "分享我的云音乐"
*/
- (NSString*)shareApp;
/**
key: "ShareComment"

zh-Hans: "分享评论"

en: "分享评论"
*/
- (NSString*)shareComment;
/**
key: "Sheet"

zh-Hans: "歌单"

en: "歌单"
*/
- (NSString*)sheet;
/**
key: "ShopCart"

zh-Hans: "购物车"

en: "购物车"
*/
- (NSString*)shopCart;
/**
key: "ShopDetail"

zh-Hans: "商品详情"

en: "商品详情"
*/
- (NSString*)shopDetail;
/**
key: "ShortVideo"

zh-Hans: "短视频"

en: "短视频"
*/
- (NSString*)shortVideo;
/**
key: "SkipAdCount"

zh-Hans: "跳过广告%d"

en: "跳过广告%d"
*/
- (NSString*)skipAdCount;
- (NSString*)skipAdCount:(NSInteger)value1;
/**
key: "SongCount"

zh-Hans: "%d首"

en: "%d首"
*/
- (NSString*)songCount;
- (NSString*)songCount:(NSInteger)value1;
/**
key: "Sort"

zh-Hans: "排序"

en: "排序"
*/
- (NSString*)sort;
/**
key: "StopVoiceInput"

zh-Hans: "停止语音输入"

en: "停止语音输入"
*/
- (NSString*)stopVoiceInput;
/**
key: "SuccessBind"

zh-Hans: "绑定成功"

en: "绑定成功"
*/
- (NSString*)successBind;
/**
key: "SuccessBuy"

zh-Hans: "已经购买了!"

en: "已经购买了!"
*/
- (NSString*)successBuy;
/**
key: "SuccessDelete"

zh-Hans: "删除成功"

en: "删除成功"
*/
- (NSString*)successDelete;
/**
key: "SuccessSave"

zh-Hans: "保存成功"

en: "保存成功"
*/
- (NSString*)successSave;
/**
key: "SuccessUnbind"

zh-Hans: "解绑成功!"

en: "解绑成功!"
*/
- (NSString*)successUnbind;
/**
key: "SuperCancel"

zh-Hans: "取消"

en: "取消"
*/
- (NSString*)superCancel;
/**
key: "SuperEdit"

zh-Hans: "编辑"

en: "编辑"
*/
- (NSString*)superEdit;
/**
key: "SuperLoading"

zh-Hans: "Loading."

en: "Loading."
*/
- (NSString*)superLoading;
/**
key: "SuperSave"

zh-Hans: "保存"

en: "保存"
*/
- (NSString*)superSave;
/**
key: "TermServicePrivacy"

zh-Hans: "服务条款和隐私协议提示"

en: "服务条款和隐私协议提示"
*/
- (NSString*)termServicePrivacy;
/**
key: "ThirdAccount"

zh-Hans: "第三方账号"

en: "第三方账号"
*/
- (NSString*)thirdAccount;
/**
key: "TimedOff"

zh-Hans: "定时关闭"

en: "定时关闭"
*/
- (NSString*)timedOff;
/**
key: "TitleActivitySetting"

zh-Hans: "SettingActivity"

en: "SettingActivity"
*/
- (NSString*)titleActivitySetting;
/**
key: "Total"

zh-Hans: "合计："

en: "合计："
*/
- (NSString*)total;
/**
key: "TotalCount"

zh-Hans: "共%d件，合计："

en: "共%d件，合计："
*/
- (NSString*)totalCount;
- (NSString*)totalCount:(NSInteger)value1;
/**
key: "Unbind"

zh-Hans: "解绑"

en: "解绑"
*/
- (NSString*)unbind;
/**
key: "UnplugHeadsetStopMusic"

zh-Hans: "拔掉耳机停止音乐播放"

en: "拔掉耳机停止音乐播放"
*/
- (NSString*)unplugHeadsetStopMusic;
/**
key: "UpdateSuccess"

zh-Hans: "完善资料成功"

en: "完善资料成功"
*/
- (NSString*)updateSuccess;
/**
key: "UploadFailed"

zh-Hans: "上传失败，请稍后再试"

en: "上传失败，请稍后再试"
*/
- (NSString*)uploadFailed;
/**
key: "UserAgreement"

zh-Hans: "登录即表示你同意《用户协议》和《隐私政策》"

en: "登录即表示你同意《用户协议》和《隐私政策》"
*/
- (NSString*)userAgreement;
/**
key: "UserDetail"

zh-Hans: "用户详情"

en: "用户详情"
*/
- (NSString*)userDetail;
/**
key: "UserFriendInfo"

zh-Hans: "关注 %d    |    粉丝 %d"

en: "关注 %d    |    粉丝 %d"
*/
- (NSString*)userFriendInfo;
- (NSString*)userFriendInfo:(NSInteger)value1 value2:(NSInteger)value2;
/**
key: "UserService"

zh-Hans: "用户协议"

en: "用户协议"
*/
- (NSString*)userService;
/**
key: "UsernameLogin"

zh-Hans: "用户名和密码登录"

en: "用户名和密码登录"
*/
- (NSString*)usernameLogin;
/**
key: "ValidUntil"

zh-Hans: "%\@失效"

en: "%\@失效"
*/
- (NSString*)validUntil;
- (NSString*)validUntil:(nullable NSString*)value1;
/**
key: "VerificationCode"

zh-Hans: "请输入验证码"

en: "请输入验证码"
*/
- (NSString*)verificationCode;
/**
key: "VerificationCodeSentTo"

zh-Hans: "验证码已发送到%\@"

en: "验证码已发送到%\@"
*/
- (NSString*)verificationCodeSentTo;
- (NSString*)verificationCodeSentTo:(nullable NSString*)value1;
/**
key: "Video"

zh-Hans: "视频"

en: "视频"
*/
- (NSString*)video;
/**
key: "VideoClicksCount"

zh-Hans: "播放：%d"

en: "播放：%d"
*/
- (NSString*)videoClicksCount;
- (NSString*)videoClicksCount:(NSInteger)value1;
/**
key: "VideoCreatedAt"

zh-Hans: "发布：%\@"

en: "发布：%\@"
*/
- (NSString*)videoCreatedAt;
- (NSString*)videoCreatedAt:(nullable NSString*)value1;
/**
key: "VideoInfo"

zh-Hans: "%d次播放, by %\@"

en: "%d次播放, by %\@"
*/
- (NSString*)videoInfo;
- (NSString*)videoInfo:(NSInteger)value1 value2:(nullable NSString*)value2;
/**
key: "VipHint"

zh-Hans: "加入黑胶VIP，彰显语种不同"

en: "加入黑胶VIP，彰显语种不同"
*/
- (NSString*)vipHint;
/**
key: "VipHintPrice"

zh-Hans: "专享特惠，黑胶首月仅0.01元！"

en: "专享特惠，黑胶首月仅0.01元！"
*/
- (NSString*)vipHintPrice;
/**
key: "VoiceError"

zh-Hans: "百度语音识别错误：%1$s"

en: "百度语音识别错误：%1$s"
*/
- (NSString*)voiceError;
- (NSString*)voiceError:(char*)value1;
/**
key: "VoiceErrorNoResult"

zh-Hans: "没有识别结果，请声音大一点，并避开嘈杂的环境等"

en: "没有识别结果，请声音大一点，并避开嘈杂的环境等"
*/
- (NSString*)voiceErrorNoResult;
/**
key: "VoiceInput"

zh-Hans: "语音输入"

en: "语音输入"
*/
- (NSString*)voiceInput;
/**
key: "WaitComment"

zh-Hans: "待评价"

en: "待评价"
*/
- (NSString*)waitComment;
/**
key: "WaitDownload"

zh-Hans: "等待下载"

en: "等待下载"
*/
- (NSString*)waitDownload;
/**
key: "WaitPay"

zh-Hans: "待付款"

en: "待付款"
*/
- (NSString*)waitPay;
/**
key: "WaitReceived"

zh-Hans: "待收货"

en: "待收货"
*/
- (NSString*)waitReceived;
/**
key: "WaitShipped"

zh-Hans: "待发货"

en: "待发货"
*/
- (NSString*)waitShipped;
/**
key: "Wechat"

zh-Hans: "微信"

en: "微信"
*/
- (NSString*)wechat;
/**
key: "Weibo"

zh-Hans: "微博"

en: "微博"
*/
- (NSString*)weibo;
/**
key: "Whole"

zh-Hans: "全部"

en: "全部"
*/
- (NSString*)whole;
/**
key: "WifiPreload"

zh-Hans: "WiFi预加载"

en: "WiFi预加载"
*/
- (NSString*)wifiPreload;
@end


@interface RInfoPlistStrings: NSObject
/**
key: "CFBundleName"

zh-Hans: "我的云音乐"

en: "MyCloudMusic"
*/
- (NSString*)cfBundleName;
@end


@interface RStrings: NSObject
- (RLocalizableStrings*)localizable;
- (RInfoPlistStrings*)infoPlist;
@end


@interface RImages: NSObject
- (UIImage*)rank;
- (UIImage*)play;
- (UIImage*)dayRecommend;
- (UIImage*)me;
- (UIImage*)thumbSelected;
- (UIImage*)inputPassword;
- (UIImage*)payAliapy;
- (UIImage*)mic;
- (UIImage*)videoTime;
- (UIImage*)next;
- (UIImage*)defaultAvatar;
- (UIImage*)loginNetease;
- (UIImage*)defaultCover;
- (UIImage*)flashlightOff;
- (UIImage*)logo;
- (UIImage*)pause;
- (UIImage*)video;
- (UIImage*)location;
- (UIImage*)codeImage;
- (UIImage*)ellipsisVertical;
- (UIImage*)superChevronRight;
- (UIImage*)sheet;
- (UIImage*)splashLogo;
- (UIImage*)shopCart;
- (UIImage*)repeatRandom;
- (UIImage*)guide1;
- (UIImage*)live;
- (UIImage*)digitalAlbum;
- (UIImage*)arrowCircleDown;
- (UIImage*)list;
- (UIImage*)discovery;
- (UIImage*)meSelected;
- (UIImage*)alert;
- (UIImage*)playCircle;
- (UIImage*)moreVerticalDot;
- (UIImage*)downloaded;
- (UIImage*)close;
- (UIImage*)loginWechatSelected;
- (UIImage*)playCircleBlack;
- (UIImage*)checked;
- (UIImage*)flashlightOn;
- (UIImage*)loginWeibo;
- (UIImage*)download;
- (UIImage*)qrCode;
- (UIImage*)loginQq;
- (UIImage*)shop;
- (UIImage*)loginQqSelected;
- (UIImage*)guide5;
- (UIImage*)guide4;
- (UIImage*)heartSolid;
- (UIImage*)personFm;
- (UIImage*)menu;
- (UIImage*)loginNeteaseSelected;
- (UIImage*)thumb;
- (UIImage*)check;
- (UIImage*)testBack;
- (UIImage*)payWechat;
- (UIImage*)commentCountSmall;
- (UIImage*)feed;
- (UIImage*)like;
- (UIImage*)buttonLive;
- (UIImage*)videoSelected;
- (UIImage*)scan;
- (UIImage*)payHuabeiStage;
- (UIImage*)locationPoint;
- (UIImage*)repeatList;
- (UIImage*)recordBackground;
- (UIImage*)placeholderError;
- (UIImage*)loginWechat;
- (UIImage*)repeatOne;
- (UIImage*)loginWeiboSelected;
- (UIImage*)feedSelected;
- (UIImage*)refresh;
- (UIImage*)eq;
- (UIImage*)arrowLeft;
- (UIImage*)add;
- (UIImage*)discoverySelected;
- (UIImage*)search;
- (UIImage*)placeholder;
- (UIImage*)addFill;
- (UIImage*)liveSelected;
- (UIImage*)inputUsername;
- (UIImage*)send;
- (UIImage*)splashBanner;
- (UIImage*)recordThumb;
- (UIImage*)previous;
- (UIImage*)commentCount;
- (UIImage*)guide2;
- (UIImage*)guide3;
@end


@interface RLaunchScreen: NSObject
- (__kindof UIViewController*)instantiateInitialViewController;
@end


@interface RStoryboards: NSObject
- (RLaunchScreen*)launchScreen;
@end


@interface RSegue: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender;
@end


@interface RSegues: NSObject
@end


@interface R: NSObject
+ (RStrings*)string;
+ (RImages*)image;
+ (RStoryboards*)storyboard;
+ (RSegues*)segue;
@end


NS_ASSUME_NONNULL_END