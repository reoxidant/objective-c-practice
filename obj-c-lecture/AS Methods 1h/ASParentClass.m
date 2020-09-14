//
//  ASParentClass.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 14.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ASParentClass.h"

@implementation ASParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Init parent class");
    }
    return self;
}

- (void) sayHello {
    NSLog(@"I love Masha, %@", self);
}

- (void) say: (NSString*) string {
    NSLog(@"%@", string);
}

- (void) sayAnother:(NSString*) string andSay:(NSString*) string2 andEndSay:(NSString*) string3{
    NSLog(@"%@ %@ %@", string, string2, string3);
}

- (NSString*) getDate{
    return [NSString stringWithFormat: @"%@", [NSDate date]];
}

- (NSString*)sayMyName{
    return @"I am Vitaliy, %@";
}

// Methods class
+ (NSString*)sayYouClassName{
    return @"I class name is ASParentClass";
}

- (void) getMemoryScopeOfObjectBySelf{
    NSLog(@"%@", self);
}

+ (void) getReferenceClassBySelf{
    NSLog(@"%@", self);
}

@end
