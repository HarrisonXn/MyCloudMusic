//
//  ButtonData.m
//  MyCloudMusic
//
//  Created by 邢世航 on 2023/4/24.
//

#import "ButtonData.h"
#import "IconTitleButtonData.h"

@implementation ButtonData
- (NSMutableArray *)datum{
    if (!_datum) {
        _datum=[NSMutableArray new];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.dayRecommend icon:R.image.dayRecommend]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.personFm icon:R.image.personFm]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.sheet icon:R.image.sheet]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.rank icon:R.image.rank]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.live icon:R.image.buttonLive]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.digitalAlbum icon:R.image.digitalAlbum]];
        [_datum addObject:[IconTitleButtonData withTitle:R.string.localizable.digitalAlbum icon:R.image.digitalAlbum]];
    }
    return _datum;
}
@end
