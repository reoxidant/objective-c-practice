//
//  ViewController.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ViewController.h"
//#import "ASChildClass.h"

#import "Card.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    ASChildClass* parent = [[ASChildClass alloc] init];

//    [parent sayHello];
    
//    [parent say: @"Masha in love me"];
    
//    [parent sayAnother:@"How are you?" andSay:@"How is you day?" andEndSay:@"How is it going?"];
    
//    NSLog(@"%@", [parent sayMyName]);
    
//    NSLog(@"%@", [ASChildClass sayYouClassName]);
    
//    NSLog(@" Current date is %@", [parent getDate]);
    
//    NSLog(@"%@", [parent getParentDate]);
    
//    [parent getMemoryScopeOfObjectBySelf]; //Scope Memory by reference self
    
//    [ASChildClass getReferenceClassBySelf]; //Return Class by reference self
    
    Card* clCard = [[Card alloc] init];
    Card* clCardSecond = [[Card alloc] init];
    
    [clCard setContents: @"King"];
    [clCardSecond setContents: @"King"];
    
    NSLog(@"Card property: %@", [clCard isContents]);
    
    NSLog(@"Contens equal = %d", [clCard match: clCardSecond]);
}

@end
