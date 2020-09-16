//
//  PropParametersViewController.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 16.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ASObjectViewController.h"
#import "ASObject.h"

@implementation ASObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initObject];
    
//    ASObject* secondObj = [[ASObject alloc] init];
    
//    self.objPropOfClass = nil;
    
//    self.objPropOfClass = secondObj;
    
    NSLog(@"Game is over!");
}

- (void) initObject{
    ASObject* object = [[ASObject alloc] init];
    
    [object setName:@"My first object"];
    
    self.objPropOfClass = object;
}


@end
