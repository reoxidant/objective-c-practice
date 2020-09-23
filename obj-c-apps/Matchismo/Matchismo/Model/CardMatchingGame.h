//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Виталий Шаповалов on 17.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject

//designated initializer
- (instancetype) initWithCardCount: (NSUInteger)count
                         usingDeck: (Deck*) deck;

@property (nonatomic, readonly) NSInteger score;

- (void) chooseCardAtIndex: (NSUInteger) index;

- (Card*) cardAtIndex: (NSInteger) index;

@end

NS_ASSUME_NONNULL_END
