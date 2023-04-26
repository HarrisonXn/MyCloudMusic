//
//  ItemTitleView.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "ItemTitleView.h"
#import "UIImage+SuperUI.h"

@implementation ItemTitleView

- (instancetype)init{
   self=[super init];
   
   [self initViews];
   
   return self;
}


- (void)initViews{
   
   //设置约束
   self.myWidth = MyLayoutSize.fill;
   self.myHeight = MyLayoutSize.wrap;
   
   //内边距
   self.padding = UIEdgeInsetsMake(PADDING_MEDDLE, PADDING_OUTER, PADDING_MEDDLE, PADDING_OUTER);

   //添加其他控件
   [self addSubview:self.titleView];
   [self addSubview:self.moreIconView];
}

#pragma mark - 创建控件

- (UILabel *)titleView{
   if (!_titleView) { // 此处为getter方法，不可用self.
       _titleView = [UILabel new];// 此处为setter方法，可以使用self.
       _titleView.myWidth = MyLayoutSize.wrap;
       _titleView.myHeight = MyLayoutSize.wrap;
       _titleView.centerYPos.equalTo(@(0));
       _titleView.numberOfLines = 1;
       _titleView.font = [UIFont boldSystemFontOfSize:17];
       _titleView.text = R.string.localizable.sheet;
       _titleView.textColor = [UIColor colorOnSurface];
   }
   return _titleView;// getter方法
}

- (UIImageView *)moreIconView{
   if (!_moreIconView) {
       _moreIconView = [UIImageView new];
       _moreIconView.myWidth = 15;
       _moreIconView.myHeight = 15;
       _moreIconView.image = [R.image.superChevronRight withTintColor];
       _moreIconView.tintColor = [UIColor black80];
       _moreIconView.myCenterY=0;
       _moreIconView.myRight = 0;
       
       //图片完全显示到控件里面
       _moreIconView.contentMode = UIViewContentModeScaleAspectFit;
   }
   return _moreIconView;
}


@end
