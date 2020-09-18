//
//  ViewController.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 16.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck* deck;
@property (nonatomic) BOOL addNewFlip;
@property (nonatomic, strong) CardMatchingGame *game;

@end

@implementation ViewController


- (CardMatchingGame*)game{
    if(!_game)
    {
        _game = [[CardMatchingGame alloc]initWithCardCount:0 usingDeck:[self createDeck]];
    }
    return _game;
}

- (Deck*) deck{
    if(!_deck){
        _deck = [self createDeck];
    }
    return _deck;
}

- (PlayingCardDeck*) createDeck{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    [self.flipsLabel setText:[NSString stringWithFormat:@"Flips: %d", self.flipCount]];
    NSLog(@"flipCount change to: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    _addNewFlip = true;
    if([sender.currentTitle length]){
        [self flipCardToBack:sender];
    }else{
        Card* randomCard = [self.deck randomCard];
        if(randomCard){
            [self flipCardToFront:sender andSetCardContents:randomCard];
        }else{
            _addNewFlip = false;
        }
    }
    (self.addNewFlip) ? self.flipCount++ : [self.flipsLabel setText:@"Cards in the deck is over!"];
}

- (void) flipCardToBack: sender{
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
    [sender setTitle:@""
            forState:UIControlStateNormal];
}

- (void) flipCardToFront: sender andSetCardContents:(Card*) randomCard{
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                      forState:UIControlStateNormal];
    [sender setTitle:randomCard.contents
            forState:UIControlStateNormal];
}

@end
