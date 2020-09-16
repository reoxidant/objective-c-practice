//
//  PlayingCardDeck.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 16.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self) {
        for (NSString* suit in [PlayingCard validSuitValues]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard* card = [[PlayingCard alloc]init];
                [card setSuit:suit];
                [card setRank:rank];
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
