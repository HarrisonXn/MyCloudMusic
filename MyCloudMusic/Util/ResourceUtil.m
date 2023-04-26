//
//  ResourceUtil.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/21.
//

#import "ResourceUtil.h"

@implementation ResourceUtil
+ (NSString *)resourceUri:(NSString *)data{
    return [NSString stringWithFormat:@"%@%@",RESOURCE_ENDPOINT,data];
}
@end
