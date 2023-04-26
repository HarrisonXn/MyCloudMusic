//
//  ViewFactoryUtil.m
//  MyCloudMusic
//  主要用来创建常见View，方便在多个位置使用
//  Created by 邢世航 on 2023/4/11.
//

#import "ViewFactoryUtil.h"

@implementation ViewFactoryUtil
/// 小圆角，主色调按钮
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
/// 主色调半圆角按钮
+(QMUIButton *)primaryHalfFilletButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = BUTTON_MEDDLE_RADIUS;
    return result;
}

/// 创建只有标题按钮（类似网页连接）
+(QMUIButton *)linkButton{
    QMUIButton *result = [[QMUIButton alloc] init];
    result.adjustsTitleTintColorAutomatically = NO;
    result.titleLabel.font = UIFontMake(TEXT_MEDDLE);
    
    return result;
}

/// 小圆角空心按钮
+ (QMUIButton *)primaryOutlineButton{
    QMUIButton *result = [self primaryButton];
    result.layer.cornerRadius = SMALL_RADIUS;
    
    result.tintColor = [UIColor black130];
    //设置边框
    result.layer.borderWidth = 1;
    result.layer.borderColor = [[UIColor black130] CGColor];
    result.backgroundColor = [UIColor clearColor];
    [result setTitleColor:[UIColor colorPrimary] forState:UIControlStateNormal];
    
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

///这里行间距和列间距可以重写
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

+(UIView *)smallDivider{
    UIView *result = [UIView new];
    result.myWidth = MyLayoutSize.fill;
    result.myHeight = 0.5;
    result.backgroundColor = [UIColor colorDivider];
    
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

@end
