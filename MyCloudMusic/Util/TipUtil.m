//  TipUtil.m
//  MyCloudMusic
//
//  Created by smile on 2022/2/21.
//

#import "TipUtil.h"

@implementation TipUtil

+ (void)showErrorWithToast:(NSString *)toast placeholderView:(PlaceholderView *)placeholderView placeholderTitle:(NSString *)placeholderTitle{
    [self showErrorWithToast:toast placeholderView:placeholderView placeholderTitle:placeholderTitle placeholderIcon:nil];
}

+ (void)showErrorWithToast:(NSString *)toast placeholderView:(PlaceholderView *)placeholderView placeholderTitle:(NSString *)placeholderTitle placeholderIcon:(UIImage *)placeholderIcon{
    if (placeholderView) {
        placeholderView.visibility = MyVisibility_Visible;
        [placeholderView showWithTitle:placeholderTitle icon:placeholderIcon];
    } else {
        [SuperToast showWithTitle:toast];
    }
}
@end
