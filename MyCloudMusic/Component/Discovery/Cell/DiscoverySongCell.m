//
//  DiscoverySongCell.m
//  MyCloudMusic
//  发现每首单曲的cell
//  Created by 邢世航 on 2023/4/25.
//

#import "DiscoverySongCell.h"

@implementation DiscoverySongCell

- (void)initViews{
    [super initViews];
    
    self.container.subviewSpace = PADDING_MEDDLE;
    
    [self.container addSubview:self.iconView];
    [self.container addSubview:self.rightContainer];
    
    //右侧容器
    [self.rightContainer addSubview:self.titleView];
    [self.rightContainer addSubview:self.infoView];
}

-(void)bind:(Song *)data position:(int)position{
    [ImageUtil show:_iconView uri:data.icon];
    _titleView.text = data.title;
    
    //专辑和歌单差不多，这里就不在实现了
    _infoView.text = [NSString stringWithFormat:@"%@-%@",data.singer.nickname,@"这是专辑名称"];
    
    //第一行，不要到顶部边距
    self.container.padding = UIEdgeInsetsMake(position==0 ? 0 : PADDING_MEDDLE, PADDING_OUTER, PADDING_MEDDLE, PADDING_OUTER);
}
#pragma mark - 创建控件
- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [UIImageView new];
        _iconView.myWidth = 51;
        _iconView.myHeight = 51;
        _iconView.image = R.image.dayRecommend;
        _iconView.clipsToBounds=YES;
        
        //图片从中心等比向外面填充，控件没有黑边，但图片可能被裁剪
        _iconView.contentMode = UIViewContentModeScaleAspectFill;
        
        [_iconView smallRadius];
        
    }
    return _iconView;
}
- (MyLinearLayout *)rightContainer{
    if (!_rightContainer) {
        _rightContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
        _rightContainer.myWidth = MyLayoutSize.fill;
        _rightContainer.myHeight = MyLayoutSize.wrap;
        _rightContainer.weight=1;
        _rightContainer.subviewSpace = PADDING_SMALL;
        
    }
    return _rightContainer;
}
- (UILabel *)titleView{
   if (!_titleView) {
       _titleView = [UILabel new];
       _titleView.myWidth = MyLayoutSize.fill;
       _titleView.myHeight = MyLayoutSize.wrap;
       _titleView.numberOfLines = 2;
       _titleView.text = @"歌单标题";
       _infoView.font = [UIFont systemFontOfSize:14];
       _titleView.textColor = [UIColor colorOnSurface];
   }
   return _titleView;
}
- (UILabel *)infoView{
    if (!_infoView) {
        _infoView = [UILabel new];
        _infoView.myWidth = MyLayoutSize.fill;
        _infoView.myHeight = MyLayoutSize.wrap;
        _infoView.numberOfLines = 2;
        _infoView.text = @"歌手信息";
        _infoView.font = [UIFont systemFontOfSize:12];
        _infoView.textColor = [UIColor black80];
    }
    return _infoView;
}

@end
