//
//  InputCodePageData.h
//  MyCloudMusic
//  
//  Created by 邢世航 on 2023/5/4.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface InputCodePageData : SuperBase
/// 类型，主要是表示做什么
@property(nonatomic, assign) ListStyle style;

@property(nonatomic, strong) NSString *phone;
@property(nonatomic, strong) NSString *email;
@end

NS_ASSUME_NONNULL_END
