//
//  SuperDateUtil.m
//  MyCloudMusic
//  日期工具类
//  Created by 邢世航 on 2023/4/10.
//

#import "SuperDateUtil.h"

@implementation SuperDateUtil
+(NSInteger)currentYear{
    //当前日期
    NSDate *date = [NSDate date];
    
    //这句是说你要获取日期的元素有哪些。获取年就要写NSYearCalendarUnit，获取小时就要写NSHourCalendarUnit，中间用|隔开
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    unsigned int unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    
    NSDateComponents *y = [cal components:unitFlags fromDate:date];
    
    //然后就可以从d中获取具体的年月日了
    NSInteger year = [y year];
//    NSInteger month = [d month];
//    NSInteger day  =  [d day];
    return year;
}

@end
