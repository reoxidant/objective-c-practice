//
//  Card.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) getScoreIfCardsEqual: (NSString*) card{
    int score = 0;
    
    if([self.cardName isEqualToString: card]){
        return score+1;
    }

    return score;
}

@end
