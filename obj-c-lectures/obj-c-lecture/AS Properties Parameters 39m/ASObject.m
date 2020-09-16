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

//- (id)copyWithZone:(nullable NSZone *)zone{
//    return [[ASObject alloc] init];
//}

//deap copy with propertiess

- (id)copyWithZone:(nullable NSZone *)zone{
    ASObject* newObj = [[ASObject alloc] init];
    newObj.name = [self.name stringByAppendingFormat:@" copying to another Object!"];
    return newObj;
}

- (void) setName: name{
    NSLog(@"Name object is %@", name);
    _name = name;
}

@end
