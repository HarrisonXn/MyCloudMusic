//
//  BaseTableViewCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/21.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self innerInit];
    }
    return self;
}

- (void)innerInit{
    [self initViews];
    [self initDatum];
    [self initListeners];
}

- (void)initViews{
    //背景透明
    self.backgroundColor = [UIColor clearColor];
    self.contentView.backgroundColor = [UIColor clearColor];
        
    //去掉默认的选中颜色
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    //根容器
    self.container = [[MyLinearLayout alloc] initWithOrientation:[self getContainerOrientation]];
    self.container.myWidth = MyLayoutSize.fill;
    self.container.myHeight = MyLayoutSize.wrap;
    self.container.gravity = MyGravity_Vert_Center;
    self.container.subviewSpace = PADDING_MEDDLE;
    [self.contentView addSubview:self.container];
}

- (void)initDatum{
    
}

- (void)initListeners{
    
}

/// 使用MyLayout后，让item自动计算高度，要重写该方法
/// @param targetSize <#targetSize description#>
/// @param horizontalFittingPriority <#horizontalFittingPriority description#>
/// @param verticalFittingPriority <#verticalFittingPriority description#>
- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority{
    return [self.container systemLayoutSizeFittingSize:targetSize];
}

/// 获取根容器布局方向
-(MyOrientation)getContainerOrientation{
    return MyOrientation_Horz;
}
@end
