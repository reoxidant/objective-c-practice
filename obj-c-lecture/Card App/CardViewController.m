//
//  ViewController.m
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 13.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "CardViewController.h"
#import "Card.h"
#import "Deck.h"

@interface CardViewController ()

@end

@implementation CardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    Card* cardOne = [[Card alloc] init];
    [cardOne setCardName:@"King"];
    Card* cardTwo = [[Card alloc] init];
    [cardTwo setCardName:@"Dama"];
    Card* cardThree = [[Card alloc] init];
    [cardThree setCardName:@"Valet"];
    
    NSLog(@"If content card of equal content card you will getting 1 alse 0 return: %d", [cardOne getScoreIfCardsEqual: [cardTwo cardName]]);
    
    NSLog(@"Name card is: %@", [cardOne cardName]);
    NSLog(@"Name card is: %@", [cardTwo cardName]);
    NSLog(@"Name card is: %@", [cardThree cardName]);
    
    Deck* deckFirst = [[Deck alloc] init];
    
    [deckFirst addCard:cardOne];
    [deckFirst addCard:cardTwo atTop:YES];
    [deckFirst addCard:cardThree];
    
    NSLog(@"Cards of desk is: %@", [deckFirst showCards]);
    
    NSLog(@"Get random card by name: %@", [[deckFirst getRandomCard] cardName]);
}

@end
