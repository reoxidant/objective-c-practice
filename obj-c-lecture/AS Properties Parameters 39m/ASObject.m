//
//  PropParameters.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 16.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ASObject.h"

@implementation ASObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create a new object!");
    }
    return self;
}

- (void) dealloc{
    NSLog(@"My created object is dead his removed from memory!");
}

@end
