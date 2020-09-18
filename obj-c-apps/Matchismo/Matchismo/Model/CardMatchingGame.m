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
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];//super's designated initializer
    
    if(self){
        
    }
    
    return self;
}

- (Card*) cardAtIndex:(NSUInteger)index{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;

- (void) chooseCardAtIndex: (NSUInteger)index
{
    Card* card = [self cardAtIndex:index];
    
    if(!card.isMatched)
    {
        card.chosen = NO;
    }
    else
    {
        //match against other chosen cards
        for(Card *otherCards in self.cards)
        {
            if(otherCards.isChosen && !otherCards.isMatched)
            {
                int matchScore = [card match:@[otherCards]];
                if(matchScore)
                {
                    self.score += matchScore * MATCH_BONUS;
                    otherCards.chosen = YES;
                    card.matched = YES;
                }
                else
                {
                    self.score -= MISMATCH_PENALTY;
                    otherCards.chosen = NO;
                }
                break;
            }
        }
        self.score -= COST_TO_CHOOSE;
        card.chosen = YES;
    }
}

@end
