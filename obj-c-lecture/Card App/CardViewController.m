//
//  ViewController.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "CardViewController.h"
#import "Card.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    Card* clCard = [[Card alloc] init];
    Card* clCardSecond = [[Card alloc] init];
    Card* clCardThree = [[Card alloc] init];
    
    [clCard setContents: @"King"];
    [clCardSecond setContents: @"King"];
    [clCardThree setContents: @"Valet"];
    
    
//    NSLog(@"Card property: %@", [clCard isContents]);

    
//    NSLog(@"Contens equal = %d", [clCard match: NSArray: []);
}

@end
