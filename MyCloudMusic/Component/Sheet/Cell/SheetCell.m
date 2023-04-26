//
//  SheetCell.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "SheetCell.h"

@implementation SheetCell
- (void)initViews{
    [super initViews];
    self.container.subviewSpace = PADDING_SMALL;
    
    [self.container addSubview:self.iconView];
    [self.container addSubview:self.titleView];
}

- (void)bind:(Sheet *)data{
    [ImageUtil show:_iconView uri:data.icon];
    _titleView.text = data.title;
}

#pragma mark - 创建控件
- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [UIImageView new];
        _iconView.myWidth = MyLayoutSize.fill;
        _iconView.heightSize.equalTo(_iconView.widthSize);
        _iconView.image = R.image.dayRecommend;
        _iconView.clipsToBounds=YES;
        
        //图片从中心等比向外面填充，控件没有黑边，但图片可能被裁剪
        _iconView.contentMode = UIViewContentModeScaleAspectFill;
        
        //小圆角
        [_iconView smallRadius];
        
    }
    return _iconView;
}

- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        _titleView.myWidth = MyLayoutSize.fill;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.numberOfLines = 2;
        _titleView.text = @"歌单标题";
        _titleView.font = [UIFont systemFontOfSize:TEXT_MEDDLE];
        _titleView.textColor = [UIColor colorOnSurface];
    }
    return _titleView;
}
@end
