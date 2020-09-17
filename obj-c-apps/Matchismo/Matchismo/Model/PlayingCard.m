//
//  PlayingCard.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "PlayingCard.h"


@implementation PlayingCard

- (NSString*) contents{
    return [[PlayingCard rankString][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

- (NSString*) suit{
    return _suit ? _suit : @"?";
}

- (void)setSuit:(NSString *)suit{
    if([[PlayingCard rankString] containsObject:suit]){
        _suit = suit;
    }
}

+ (NSUInteger) maxRank{
    return [[PlayingCard rankString] count];
}

+ (NSArray*) validSuits{
    return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
}

+ (NSArray*) rankString{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

@end
