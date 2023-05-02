//
//  SuperDialogController.h
//  MyCloudMusic
//  对话框封装
//  Created by 邢世航 on 2023/4/30.
//

#import "BaseController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperDialogController : BaseController
@property(nonatomic, strong) QMUIModalPresentationViewController *modalController;

@property(nonatomic, strong) MyBaseLayout *superRootContainer;
@property(nonatomic, strong) MyBaseLayout *superContentContainer;
@property(nonatomic, strong) MyBaseLayout *superFooterContainer;

/// 标题
@property(nonatomic, strong) UILabel *titleView;

/// 按钮列表，类型为QMUIButton
@property(nonatomic, strong) NSMutableArray *buttons;

@property(nonatomic, strong) NSString *titleText;

/// 设置确认按钮
/// @param title <#title description#>
/// @param target <#target description#>
/// @param action <#selector description#>
-(SuperDialogController *)setConfirmButton:(NSString *)title target:(nullable id)target action:(SEL)action;

/// 设置警告按钮
-(SuperDialogController *)setWarningButton:(NSString *)title target:(nullable id)target action:(SEL)action;

/// 设置取消按钮
-(SuperDialogController *)setCancelButton:(NSString *)title target:(nullable id)target action:(SEL)action;

/// 显示
-(void)show;

-(void)hide;

@end

NS_ASSUME_NONNULL_END
