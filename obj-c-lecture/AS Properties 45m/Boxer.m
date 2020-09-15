//
//  Boxer.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "Boxer.h"

@implementation Boxer
@synthesize name = _name;

//- (void) setName:(NSString*) inputName{
//    _name = @"Hello setter is was be hacked";
//}

//- (NSString*) name{
//    return @"Are you sure? getter is was be a hacked";
//}

- (void) setName:(NSString*) inputName{
    _name = inputName;
}

- (NSString*) name{
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

@end
