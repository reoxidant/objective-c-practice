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
#import "PlayingCard.h"

@interface CardViewController ()

@end

@implementation CardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    Card* cardOne = [[Card alloc] init];
    [cardOne setCardDescription:@"King"];
    Card* cardTwo = [[Card alloc] init];
    [cardTwo setCardDescription:@"Dama"];
    Card* cardThree = [[Card alloc] init];
    [cardThree setCardDescription:@"Valet"];
    
    NSLog(@"If content card of equal content card you will getting 1 alse 0 return: %d", [cardOne getScoreIfCardsEqual: [cardTwo cardDescription]]);
    
    NSLog(@"Name card is: %@", [cardOne cardDescription]);
    NSLog(@"Name card is: %@", [cardTwo cardDescription]);
    NSLog(@"Name card is: %@", [cardThree cardDescription]);
    
    Deck* deckFirst = [[Deck alloc] init];
    
    [deckFirst addCard:cardOne];
    [deckFirst addCard:cardTwo atTop:YES];
    [deckFirst addCard:cardThree];
    
    PlayingCard* pcard = [[PlayingCard alloc] init];
    
    NSLog(@"Cards of desk is: %@", [deckFirst showCards]);
    
    NSLog(@"Get random card by name: %@", [[deckFirst getRandomCard] cardDescription]);
    
    [pcard setSuit:@"King"];
    [pcard setRank:1];
    NSLog(@"Card desc result: %@", [pcard cardDescription]);
}

@end
