//
//  BaseController.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/11.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"BaseController viewDidLoad");
    [self initViews];
    [self initDatum];
    [self initListeners];
}

- (void)initViews{
    NSLog(@"BaseController initViews");
}

- (void)initDatum{
    NSLog(@"BaseController initDatum");
}

- (void)initListeners{
    NSLog(@"BaseController initListeners");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
