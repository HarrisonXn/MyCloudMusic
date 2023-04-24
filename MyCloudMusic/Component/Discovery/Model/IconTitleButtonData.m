//
//  IconTitleButtonData.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "IconTitleButtonData.h"

@implementation IconTitleButtonData

+ (instancetype)withTitle:(NSString *)title icon:(UIImage *)icon{
    IconTitleButtonData *result = [IconTitleButtonData new];
    
    result.title=title;
    result.icon=icon;
    
    return result;
}
@end
