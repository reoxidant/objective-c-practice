//
//  Deck.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSArray*) cards{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void) addCard: (Card*) card atTop: (BOOL) atTop{
    if(atTop){
        [_cards insertObject:card atIndex:0];
    }else{
        [_cards addObject:card];
    }
}

- (void) addCard: (Card*) card{
    
}
- (Card*) randomCard{
    Card* randomCard = nil;
    
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
