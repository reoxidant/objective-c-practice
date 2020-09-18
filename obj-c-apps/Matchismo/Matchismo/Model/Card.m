//
//  Card.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Card.h"

@implementation Card

//return score 1 if card is equals also 0

- (int) match: (NSArray*) arCard{
    int score = 0;
    
    for (Card* card in arCard) {
        if([self.contents isEqualToString: card.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
