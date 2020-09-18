//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject

//designated initializer
- (instancetype) initWithCardCount: (NSUInteger)count
                         usingDeck: (Deck*) deck;

- (Card *) cardAtIndex: (NSUInteger) index;
- (void) chooseCardAtIndex: (NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end

NS_ASSUME_NONNULL_END
