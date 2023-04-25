//
//  SuperToolbarView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/25.
//

#import "SuperToolbarView.h"

@implementation SuperToolbarView

- (instancetype)init{
    self=[super init];
    [self initViews];
    return self;
}

- (void)initViews{
    self.myWidth = MyLayoutSize.fill;
    //系统导航栏高度是44，但看着太低了，所以增大
    self.heightSize.equalTo(@(50));
    
    //标题容器
   [self addSubview:self.centerContainer];
   [self.centerContainer addSubview:self.titleView];

}
#pragma mark - 创建控件
- (MyLinearLayout *)centerContainer{
    if(!_centerContainer){
        _centerContainer = [[MyLinearLayout alloc]initWithOrientation:MyOrientation_Horz];
        //垂直居中对齐
        _centerContainer.gravity = MyGravity_Vert_Center;
        
        _centerContainer.myCenterX = 0;
        _centerContainer.myCenterY=0;
        //高度充满，宽度自适应
        _centerContainer.myWidth = MyLayoutSize.wrap;
        _centerContainer.myHeight = MyLayoutSize.fill;
    }
    return _centerContainer;
}

- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        _titleView.myWidth = MyLayoutSize.wrap;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.numberOfLines = 1;
//        _titleView.text = @"标题";
        _titleView.font = [UIFont systemFontOfSize:TEXT_LARGE3];
//        _titleView.textColor = [UIColor colorOnSurface];
    }
    return _titleView;
}
@end
