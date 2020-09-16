//
//  PlayingCard.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString*) cardDescription{
    NSArray *rankStringCards = @[@"j", @"d", @"k"];
    return [rankStringCards[self.rank] stringByAppendingString:self.suit];
}

- (NSString*) suit{
    return _suit ? _suit : @"?";
}
@end
