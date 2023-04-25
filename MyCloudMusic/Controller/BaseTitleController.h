//
//  BaseTitleController.h
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "BaseLogicController.h"
#import "SuperToolbarView.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTitleController : BaseLogicController
/// 导航栏控件
@property (nonatomic, strong) SuperToolbarView *toolbarView;

/// 初始化导航栏，当然可以封装默认就添加，但这样会增加复杂度
-(void)initToolbar;

/// 是否添加toolbar
-(BOOL)isAddToolBar;

@end

NS_ASSUME_NONNULL_END
