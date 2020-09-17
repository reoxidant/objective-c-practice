//
//  ViewController.m
//  Matchismo
//
//  Created by Виталий Шаповалов on 16.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck* deck;
@end

@implementation ViewController

- (Deck*) deck{
    if(!_deck){
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    [self.flipsLabel setText:[NSString stringWithFormat:@"Flips: %d", self.flipCount]];
    NSLog(@"flipCount change to: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([[self.deck cards] count]){
        if([sender.currentTitle length]){
            [self flipCardToBack:sender];
        }else{
            [self flopCardToFront:sender];
            NSLog(@"Has cards in deck: %zd", [[self.deck cards] count] );
        }
        self.flipCount++;
    }else{
        [self flipCardToBack:sender];
        [self.flipsLabel setText:@"Cards in the deck is over!"];
    }
}

- (void) flipCardToBack: sender{
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
    [sender setTitle:@""
            forState:UIControlStateNormal];
}

- (void) flopCardToFront: sender{
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                      forState:UIControlStateNormal];
    [sender setTitle:[self.deck randomCard].contents
            forState:UIControlStateNormal];
}

@end
