//
//  PlayingCard.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//
//@[@"​♥", @"​♦"​, @"​♠"​, @"​♣"​]

#import "PlayingCard.h"

@implementation PlayingCard

+ (NSArray*)rankStringCards{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSArray*)validSuitValues{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

+ (NSUInteger)maxRank{
    return [self.rankStringCards count] - 1;
}

- (NSString*) cardDescription{
    return [[PlayingCard rankStringCards][self.rank] stringByAppendingString:self.suit];
}
@synthesize suit = _suit;


- (void) setSuit:(NSString *)valueForSuit{
    if([[PlayingCard validSuitValues] containsObject:valueForSuit]){
        _suit = valueForSuit;
    }else{
        NSLog(@"You try to set no valid values!");
    }
}

- (NSString*) suit{
    return _suit ? _suit : @"?";
}
@end
