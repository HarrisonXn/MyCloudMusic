//
//  NSString+SuperOC.h
//  MyCloudMusic
//  扩展字符串，提供常用的功能，例如：去除两端空格
//  Created by 邢世航 on 2023/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SuperOC)
//去除字符串两端的空格，换行
- (NSString *)trim;
@end

NS_ASSUME_NONNULL_END
