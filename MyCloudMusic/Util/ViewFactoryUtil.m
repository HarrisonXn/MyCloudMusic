//
//  ViewFactoryUtil.m
//  MyCloudMusic
//  主要用来创建常见View，方便在多个位置使用
//  Created by 邢世航 on 2023/4/11.
//

#import "ViewFactoryUtil.h"

@implementation ViewFactoryUtil

+(QMUIButton *)primaryButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = NO;
    result.adjustsButtonWhenHighlighted = YES;
    result.titleLabel.font = UIFontMake(TEXT_LARGE);
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = BUTTON_MEDDLE;
    result.backgroundColor = [UIColor colorPrimary];
    result.layer.cornerRadius = SMALL_RADIUS;
    result.tintColor = [UIColor colorLightWhite];
    [result setTitleColor:[UIColor colorLightWhite] forState:UIControlStateNormal];
    return result;
}

+(QMUIButton *)primaryHalfFilletButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = BUTTON_MEDDLE_RADIUS;
    return result;
}

+(QMUIButton *)linkButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = NO;
    result.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    
    return result;
}

+ (QMUIButton *)primaryOutlineButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = SMALL_RADIUS;
    
    result.tintColor = [UIColor black130];
    result.layer.borderWidth = 1;
    result.layer.borderColor = [[UIColor black130] CGColor];
    result.backgroundColor = [UIColor clearColor];
    [result setTitleColor:[UIColor colorPrimary] forState:UIControlStateNormal];
    
    return result;
}

+ (QMUIButton *)secondHalfFilletSmallButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.titleLabel.font = UIFontMake(TEXT_SMALL);
    result.myWidth = 90;
    result.myHeight = BUTTON_SMALL;
    result.tintColor = [UIColor black80];
    result.layer.cornerRadius = BUTTON_SMALL_RADIUS;
    result.layer.borderWidth = 1;
    result.layer.borderColor = [[UIColor black80] CGColor];
    [result setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    return result;
}

+(QMUIButton *)buttonWithImage:(UIImage *)data{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = YES;
    result.myWidth = 30;
    result.myHeight = 30;
    result.tintColor = [UIColor colorOnSurface];
    [result setImage:data forState:UIControlStateNormal];
    return result;
}

+(QMUIButton *)buttonWithImage:(UIImage *)data selectedImage:(UIImage *)selectedImage{
    QMUIButton *result = [[QMUIButton alloc] init];
//    result.adjustsTitleTintColorAutomatically = NO;
    result.adjustsImageWhenHighlighted = NO;
    result.myWidth = 40;
    result.myHeight = 40;
//    result.tintColor = [UIColor colorOnSurface];
    [result setImage:data forState:UIControlStateNormal];
    [result setImage:selectedImage forState:UIControlStateHighlighted];
    
    //图片完全显示到控件里面
    result.contentMode = UIViewContentModeScaleAspectFit;
    
    return result;
}

+ (QMUIButton *)primaryHalfFilletOutlineButton{
    QMUIButton *result = [self primaryOutlineButton];
    result.layer.cornerRadius = BUTTON_MEDDLE_RADIUS;
    return result;
}

+(QMUIButton *)title:(NSString *)title color:(UIColor *)color{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = BUTTON_MEDDLE;
    result.adjustsTitleTintColorAutomatically = NO;
    result.titleLabel.font = UIFontMake(TEXT_LARGE3);
    result.backgroundColor = [UIColor colorBackground];
    [result setTitleColor:color forState:UIControlStateNormal];
    
    //按下高亮时的背景色
    result.highlightedBackgroundColor = [UIColor colorSurfaceClick];
    
    [result setTitle:title forState:UIControlStateNormal];
    
    return result;
}

+(QMUIButton *)primarySmallHalfFilletButton{
    QMUIButton *result = [self primaryButton];
    result.myHeight=BUTTON_SMALL;
    result.myWidth=MyLayoutSize.wrap;
    result.contentEdgeInsets=UIEdgeInsetsMake(0, PADDING_MEDDLE, 0, PADDING_MEDDLE);
    result.layer.cornerRadius = BUTTON_SMALL_RADIUS;
    return result;
}

+(QMUIButton *)buttonWithImage:(UIImage *)image title:(NSString *)title{
    QMUIButton *result = [[QMUIButton alloc] init];
//    result.myWidth = MyLayoutSize.wrap;
    result.myHeight = 46;
    result.adjustsTitleTintColorAutomatically = YES;
    result.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    result.tintColor =[UIColor colorOnSurface];
    [result setTitle:title forState:UIControlStateNormal];
    [result setTitleColor:[UIColor colorOnSurface] forState:UIControlStateNormal];
    [result setImage:[image withTintColor] forState:UIControlStateNormal];
    result.imagePosition = QMUIButtonImagePositionLeft;
    return result;
}

+(QMUIButton *)secoundButtonWithImage:(UIImage *)image title:(NSString *)title{
    QMUIButton *result = [self buttonWithImage:image title:title];
    
    //设置图片和文本距离
    [result setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 5)];
    
    result.backgroundColor = [UIColor clearColor];
    result.tintColor = [UIColor colorOnSurface];
    
    return result;
}

/// 垂直图标，标题按钮
/// @param image <#image description#>
/// @param title <#title description#>
+(QMUIButton *)verticalButtonWithImage:(UIImage *)image title:(NSString *)title{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.myWidth = MyLayoutSize.wrap;
    result.myHeight = MyLayoutSize.wrap;
    result.adjustsTitleTintColorAutomatically = YES;
    result.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    result.tintColor =[UIColor black80];
    [result setTitle:title forState:UIControlStateNormal];
    [result setTitleColor:[UIColor black80] forState:UIControlStateNormal];
    [result setImage:[image withTintColor] forState:UIControlStateNormal];
    result.imagePosition = QMUIButtonImagePositionTop;
    
    //设置图片和文本距离
    [result setImageEdgeInsets:UIEdgeInsetsMake(0, 0, PADDING_SMALL, 0)];
    
    return result;
}

/// 创建圆形图片按钮
+(QMUIButton *)circleButtonWithImage:(UIImage *)data{
    QMUIButton *result = [ViewFactoryUtil buttonWithImage:data];
    result.backgroundColor = [UIColor transparent88];
    result.tintColor = [UIColor black180];
    result.myWidth = 44;
    result.myHeight = 44;
    [result radiusWithSize:22];
    return result;
}


+(UIImageView *)moreIconView{
    UIImageView *result = [UIImageView new];
    result.myWidth = 15;
    result.myHeight = 15;
    result.image = [R.image.superChevronRight withTintColor];
    result.tintColor = [UIColor black80];
    result.centerYPos.equalTo(@(0));
    
    //图片完全显示到控件里面
    result.contentMode = UIViewContentModeScaleAspectFit;
    
    return result;
}

+(UITableView *)tableView{
    QMUITableView *result = [[QMUITableView alloc] init];
    
    result.backgroundColor = [UIColor clearColor];
    
    //去掉没有数据cell的分割线
    result.tableFooterView = [[UIView alloc] init];
    
    //去掉默认分割线
    result.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //修复默认分割线，向右偏移问题
    result.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = MyLayoutSize.fill;
    
    //设置所有cell的高度为高度自适应，如果cell高度是动态的请这么设置。 如果不同的cell有差异那么可以通过实现协议方法-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
    //如果您最低要支持到iOS7那么请您实现-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath方法来代替这个属性的设置。
    result.rowHeight = UITableViewAutomaticDimension;
    
    result.estimatedRowHeight = UITableViewAutomaticDimension;
    
    //不显示滚动条
    [result setShowsVerticalScrollIndicator:NO];
    
    result.allowsSelection = YES;
    
    return result;
}

+(UICollectionView *)collectionView{
    UICollectionView *result = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[self collectionViewFlowLayout]];
    
    result.backgroundColor = [UIColor clearColor];
    
    //不显示滚动条
    [result setShowsVerticalScrollIndicator:NO];
    [result setShowsHorizontalScrollIndicator:NO];

    //tableView的内容从tableView顶部距离开始显示，不要自动偏移状态栏尺寸
    [result setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = MyLayoutSize.fill;

    return result;
}

+(UICollectionViewFlowLayout *)collectionViewFlowLayout{
    UICollectionViewFlowLayout *result = [UICollectionViewFlowLayout new];
    result.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);

    //滚动方向
    result.scrollDirection=UICollectionViewScrollDirectionVertical;

    //每个Cell的行间距
    result.minimumLineSpacing = 0;

    //每个Cell的列间距
    result.minimumInteritemSpacing = 0;

    return result;
}

+(UICollectionView *)pageCollectionView{
    UICollectionView *result = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[self pageCollectionViewFlowLayout]];
    result.pagingEnabled = YES;
    result.backgroundColor = [UIColor clearColor];
    
    //不显示滚动条
    [result setShowsVerticalScrollIndicator:NO];
    [result setShowsHorizontalScrollIndicator:NO];

    //tableView的内容从tableView顶部距离开始显示，不要自动偏移状态栏尺寸
    [result setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = MyLayoutSize.fill;
    
    return result;
}

+(UICollectionViewFlowLayout *)pageCollectionViewFlowLayout{
    UICollectionViewFlowLayout *result = [UICollectionViewFlowLayout new];
    result.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);

    //滚动方向
    result.scrollDirection=UICollectionViewScrollDirectionHorizontal;

    //每个Cell的行间距
    result.minimumLineSpacing = 0;

    //每个Cell的列间距
    result.minimumInteritemSpacing = 0;

    return result;
}


+(UIView *)smallDivider{
    UIView *result = [UIView new];
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = 0.5;
    result.backgroundColor = [UIColor colorDivider];
    
    return result;
}

+(UIView *)smallVerticalDivider{
    UIView *result = [UIView new];
    result.myWidth = 0.5;
    result.myHeight = MyLayoutSize.fill;
    result.backgroundColor = [UIColor colorDivider];
    
    return result;
}

+(UIView *)divider{
    UIView *result = [UIView new];
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = 10;
    result.backgroundColor = [UIColor colorDivider];
    
    return result;
}

+(MyLinearLayout *)orientationContainer{
    MyLinearLayout *result = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = MyLayoutSize.wrap;
    
    return result;
}
@end
