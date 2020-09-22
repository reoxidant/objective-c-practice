//
//  TypesTest.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 21.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "TypesTest.h"

@implementation TypesTest

- (void) types{
    NSString* stringtype = @"stringtype";
    NSUInteger unittype = 1.55; //1
    NSInteger inttype = 2.55; //2
    int inttype2 = 3; //3
    double doubletype = 10.5; //10.5
    BOOL booltype = YES; //1
    
    
    NSNumber *objInt = [NSNumber numberWithInteger:inttype];
    NSNumber *objUInt = [NSNumber numberWithUnsignedInteger:unittype];
    NSNumber *objInt2 = [NSNumber numberWithInt:inttype2];
    NSNumber *objDouble = [NSNumber numberWithDouble:doubletype];
    NSNumber *objBool = [NSNumber numberWithBool:booltype];
    NSString *objString = [NSString stringWithFormat:@"%@", stringtype];
    
    
    NSArray *array = [NSArray arrayWithObjects:objString,objBool,objDouble,objInt2, objUInt, objInt, nil];
    
    NSLog(@"Main types is: %@, %d, %f, %d, %zd, %zd",
          [array objectAtIndex:0],
          [[array objectAtIndex:1] boolValue],
          [[array objectAtIndex:2] doubleValue],
          [[array objectAtIndex:3] intValue],
          [[array objectAtIndex:4] unsignedIntegerValue],
          [[array objectAtIndex:5] integerValue]);
//
//    NSLog(@"Main types is: %@, %zd, %zd, %d, %f, %d", stringtype, unittype, inttype, inttype2, doubletype, booltype);
//
//    NSInteger i = doubletype;// 10
//    NSLog(@"%zd", i);
}

@end
