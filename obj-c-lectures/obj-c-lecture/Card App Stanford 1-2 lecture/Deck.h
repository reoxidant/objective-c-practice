//
//  Deck.h
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 14.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

- (void) addCard: (Card *) card atTop: (BOOL)atTop;

- (void) addCard: (Card *) card;

- (NSMutableArray*) showCards;

- (Card*) randomCard;

@end

NS_ASSUME_NONNULL_END
