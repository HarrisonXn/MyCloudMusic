//
//  BaseLogicController.h
//  MyCloudMusic
//  项目中通用的逻辑控制器
//  Created by 邢世航 on 2023/4/11.
//

#import "BaseCommonController.h"
#import "PlaceholderView.h"
//提供类似Android中更高层级的布局框架
#import <MyLayout/MyLayout.h>

#import "BaseCommonController.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseLogicController : BaseCommonController<UITableViewDataSource,UITableViewDelegate>
/// TableView
@property (nonatomic, strong) UITableView *tableView;
/// 数组
@property (nonatomic, strong) NSMutableArray *datum;

/// 根容器
@property (nonatomic, strong) MyBaseLayout *rootContainer;

/// 容器
@property (nonatomic, strong) MyBaseLayout *container;

/// 头部容器
@property (nonatomic, strong) MyBaseLayout *superHeaderContainer;
@property (nonatomic, strong) MyBaseLayout *superHeaderContentContainer;

/// 底部容器
@property (nonatomic, strong) MyBaseLayout *superFooterContainer;
@property (nonatomic, strong) MyBaseLayout *superFooterContentContainer;

/// frame容器，一般用来添加占位布局
@property (nonatomic, strong) MyBaseLayout *frameContainer;

/// 占位控件
@property(nonatomic,strong) PlaceholderView *placeholderView;

/// 内容容器，一般只有初始化ScrollView后，才有效
@property (nonatomic, strong) MyLinearLayout *contentContainer;

/// 滚动容器
@property (nonatomic, strong) UIScrollView *scrollView;

/// 初始化垂直方向LinearLayout容器
- (void)initLinearLayout;

/// 初始化RelativeLayout容器，四边都在安全区内
- (void)initRelativeLayoutSafeArea;

/// 初始化垂直方向LinearLayout容器，四边都在安全区内
- (void)initLinearLayoutSafeArea;

/// 在initLinearLayoutSafeArea基础上，设置padding，子控件间距
- (void)initLinearLayoutInputSafeArea;

/// 初始化TableView，四边都在安全区内
- (void)initTableViewSafeArea;

/// 使用默认分割线
- (void)initDefaultTableViewDivider;

/// 初始化占位控件
- (void)initPlaceholderView;

/// 初始化ScrollView容器，四边都在安全区内
- (void)initScrollSafeArea;
#pragma mark - 加载数据

/// 加载数据方法
/// @param isPlaceholder 是否是通过placeholder控件触发的
-(void)loadData:(BOOL)isPlaceholder;

/// 加载数据方法
-(void)loadData;

#pragma mark - 界面方法

/// 关闭界面
-(void)finish;
@end

NS_ASSUME_NONNULL_END
