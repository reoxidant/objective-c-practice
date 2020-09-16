//
//  PlayingCard.h
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray*)rankStringCards;
+ (NSArray*)validSuitValues;
+ (NSUInteger)maxRank;

@end

NS_ASSUME_NONNULL_END
