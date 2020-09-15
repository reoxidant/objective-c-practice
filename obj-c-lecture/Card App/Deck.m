//
//  Deck.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 14.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray*)cards{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void) addCard: (Card *) card atTop: (BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

- (void) addCard: (Card *) card{
    [self.cards addObject:card];
}

- (NSMutableArray*) showCards{
    return _cards;
}

@end
