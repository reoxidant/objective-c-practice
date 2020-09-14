//
//  ASChildClass.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 14.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ASChildClass.h"

@implementation ASChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Init child class");
    }
    return self;
}

- (NSString*) sayMyName{
    return @"I am robot";
}

- (NSString*) sayYouClassName{
    return @"My class name is ASChildClass";
}

- (NSString*) getAnotherDate{
    return @"I am not know what you want!";
}

- (NSString*) getDate{
    return self.getAnotherDate;
}

- (NSString*) getParentDate{
    return super.getDate;
}

@end
