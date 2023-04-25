//
//  ClickEvent.h
//  MyCloudMusic
//  点击事件，根据style区分具体是什么点击
//  Created by 邢世航 on 2023/4/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClickEvent : NSObject<QTEvent>
/// 类型，取值常量文件，Style开头的
@property (nonatomic, assign) ListStyle style;
@end

NS_ASSUME_NONNULL_END
