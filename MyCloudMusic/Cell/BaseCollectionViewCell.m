//
//  BaseCollectionViewCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "BaseCollectionViewCell.h"

@implementation BaseCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
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
    
    //根容器
    self.container = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.container.myWidth = MyLayoutSize.fill;
    self.container.myHeight = MyLayoutSize.wrap;
    [self.contentView addSubview:self.container];
}

- (void)initDatum{
    
}

- (void)initListeners{
    
}

/// 使用MyLayout后，让itme自动计算高度，要重写该方法
/// @param targetSize <#targetSize description#>
/// @param horizontalFittingPriority <#horizontalFittingPriority description#>
/// @param verticalFittingPriority <#verticalFittingPriority description#>
- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority{
    return [self.container systemLayoutSizeFittingSize:targetSize];
}

@end
