//
//  Card.h
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic, getter=isContents) NSString *contents;

- (void) setContents: (NSString*) contents;

- (int) match: (Card*) card;
    
@end
