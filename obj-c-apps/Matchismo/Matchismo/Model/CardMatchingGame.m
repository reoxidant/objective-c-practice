//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (strong, nonatomic) NSMutableArray *cards; // of Card
@end

@implementation CardMatchingGame

- (NSMutableArray*) cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (instancetype) initWithCardCount: (NSUInteger)count
                         usingDeck: (Deck*) deck
{
    self = [super init];
    
    if(self)
    {
        for (int i = 0; i < count; i++) {
            Card* card = [deck randomCard];
            if(card){
                [self.cards addObject:card];
            }else{
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

- (void) chooseCardAtIndex:(NSUInteger)index
{
    Card* card = [self cardAtIndex:index];
    
    if(!card.isMatched){
        if(card.isChosen){
            card.chosen = NO;
        }else{
            //match against another card
            for(Card *otherCard in self.cards){
                if(otherCard.isChosen && !card.isMatched){
                    int matchScore = [card match:@[otherCard]];
                    if(matchScore){
                        self.score += matchScore;
                        card.matched = YES;
                        otherCard.matched = YES;
                    }else{
                        
                    }
                }
            }
        }
    }
}

- (Card*) cardAtIndex: (NSInteger) index
{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

- (instancetype) init
{
    return nil;
}

@end
