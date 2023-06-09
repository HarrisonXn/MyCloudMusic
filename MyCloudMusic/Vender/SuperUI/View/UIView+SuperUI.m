//
//  UIView+SuperUI.m
//  MyCloudMusic
//  扩展显示隐藏控件快捷方法
//  Created by 邢世航 on 2023/4/23.
//

#import "UIView+SuperUI.h"

@implementation UIView (SuperUI)
/// 设置隐藏控件
-(void)hide{
    self.visibility = MyVisibility_Gone;
}

/// 设置隐藏控件，但还是暂用位置
-(void)invisible{
    self.visibility = MyVisibility_Invisible;
}

/// 显示控件
-(void)show{
    self.visibility = MyVisibility_Visible;
}

/// 显示控件
/// @param show 是否显示
-(void)show:(BOOL)show{
    self.visibility = show ? MyVisibility_Visible : MyVisibility_Gone;
}

-(void)smallRadius{
    //小圆角
    self.layer.cornerRadius = SMALL_RADIUS;
    self.clipsToBounds=YES;
    }

- (void)radiusWithSize:(float)size{
    self.layer.cornerRadius = size;
    self.clipsToBounds=YES;
}

- (void)radius{
    [self radiusWithSize:MEDDLE_RADIUS];

}
@end
