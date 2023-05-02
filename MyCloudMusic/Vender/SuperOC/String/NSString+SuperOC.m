//
//  NSString+SuperOC.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/30.
//

#import "NSString+SuperOC.h"

@implementation NSString (SuperOC)
- (NSString *)trim{
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *result = [self stringByTrimmingCharactersInSet:characterSet];
    return result;
}
@end
