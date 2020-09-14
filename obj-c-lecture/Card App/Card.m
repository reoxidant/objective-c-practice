//
//  Card.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Card.h"

//private declaring
@interface Card()
    
@end

@implementation Card

//instanse of variable
@synthesize contents = _contents;

//Getter
//- (NSString *) contents{
//    return _contents;
//}

//Setter

//- (void) setContents: (NSString*) contents{
//    _contents = contents;
//}

- (int) match:(NSArray *)arCard{
    int score = 0;
    
    for (Card* card in arCard) {
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}


@end