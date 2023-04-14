//
//  SuperToast.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/14.
//

#import "SuperToast.h"

static MBProgressHUD *progressHUD;

@implementation SuperToast
+ (void)showWithTitle:(NSString *)title{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:KeyWindow animated:YES];
    hud.mode = MBProgressHUDModeText;
    
    //菊花颜色
//    hud.activityIndicatorColor = [UIColor whiteColor];
    
    //背景颜色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [UIColor blackColor];
    
    //标题文字颜色
    hud.label.textColor=[UIColor whiteColor];
    hud.label.font = [UIFont boldSystemFontOfSize:16.0];
    hud.label.numberOfLines=0;
    
    hud.label.text = title;
    
    //MBProgressHUD的默认坐标是从屏幕中心算起
    CGFloat offsetY=-CGRectGetHeight(hud.frame)/2+130;
    
    //显示到屏幕顶部
    //因为显示到中心有点遮挡内容
    hud.offset = CGPointMake(0.f, offsetY);
    
    hud.removeFromSuperViewOnHide = YES;
    
    [hud hideAnimated:YES afterDelay:1.5];
}


+ (void)showLoading{
    [self showLoading:R.string.localizable.superLoading];
}

+ (void)showLoading:(NSString *)title{
    //菊花颜色
    [UIActivityIndicatorView appearanceWhenContainedInInstancesOfClasses:@[[MBProgressHUD class]]].color = [UIColor whiteColor];
    
    if (progressHUD==nil) {
        progressHUD = [MBProgressHUD showHUDAddedTo:KeyWindow animated:YES];
        progressHUD.mode = MBProgressHUDModeIndeterminate;
        
        //最小尺寸
        progressHUD.minSize = CGSizeMake(120, 120);
        
        //背景半透明
        progressHUD.backgroundView.style = MBProgressHUDBackgroundStyleSolidColor;
        progressHUD.backgroundView.color = [UIColor colorWithWhite:0.f alpha:0.5f];
        
        //背景颜色
        progressHUD.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
        progressHUD.bezelView.backgroundColor = [UIColor blackColor];
        
        //标题文字颜色
        progressHUD.label.textColor=[UIColor whiteColor];
        progressHUD.label.font = [UIFont boldSystemFontOfSize:TEXT_LARGE];
        
        //显示对话框
        [progressHUD showAnimated:YES];
    }
    //设置对话框文字
    progressHUD.label.text = title;
    
    //详细文字
    //progressHUD.detailsLabelText = @"请耐心等待";

}


+ (void)hideLoading{
    if (progressHUD) {
        [progressHUD hideAnimated:YES];
        progressHUD=nil;
    }
}
@end
