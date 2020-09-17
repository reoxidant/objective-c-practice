//
//  Deck.h
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : Card

- (void) addCard: (Card*) card atTop: (BOOL) atTop;
- (void) addCard: (Card*) card;
- (Card*) randomCard;

@end

NS_ASSUME_NONNULL_END
