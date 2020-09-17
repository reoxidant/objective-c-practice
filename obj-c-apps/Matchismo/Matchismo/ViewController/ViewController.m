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

@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    [self.flipsLabel setText:[NSString stringWithFormat:@"Flips: %d", self.flipCount]];
    NSLog(@"flipCount change to: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
