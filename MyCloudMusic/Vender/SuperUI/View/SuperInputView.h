//
//  SuperInputView.h
//  MyCloudMusic
//  输入控件
//  Created by 邢世航 on 2023/4/30.
//

#import "BaseRelativeLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperInputView : BaseRelativeLayout
/// 内容容器，就是放图标，标题等
@property (nonatomic, strong) MyBaseLayout *container;

/// 图标控件
 @property (nonatomic, strong) UIImageView *iconView;

/// 单行输入
@property (nonatomic, strong) QMUITextField *textFieldView;

/// 小圆角，灰色边框
-(void)smallRadius;

/// 密码样式
-(void)passwordStyle;

#pragma mark - 快捷创建方法
+(SuperInputView *)withImage:(UIImage *)image placeholder:(NSString *)placeholder;

+(SuperInputView *)withPlaceholder:(NSString *)placehoslder;

@end

NS_ASSUME_NONNULL_END
