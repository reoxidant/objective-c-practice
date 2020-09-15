//
//  Boxer.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Boxer.h"

@interface Boxer()
@property (assign, nonatomic) NSInteger nameCount;
@end

@implementation Boxer
@synthesize name = _name;

//- (void) setName:(NSString*) inputName{
//    _name = @"Hello setter is was be hacked";
//}

//- (NSString*) name{
//    return @"Are you sure? getter is was be a hacked";
//}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Default";
        self.age = 1;
        self.height = 30;
        self.weight = 5;
    }
    return self;
}

- (void) setName:(NSString*) inputName{
    _name = inputName;
}

- (NSString*) name{
    self.nameCount++;
    return _name;
}

- (float) height {
    NSLog(@"Height getter is called!");
    
    return _height;
}

- (float) whatIsYouHeight{
    //redefined getter and call it
    // return self.height;
    return _height;
}

- (NSInteger*) getCountName{
    return self.nameCount;
}

@end
