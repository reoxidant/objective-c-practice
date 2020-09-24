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

@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController


- (CardMatchingGame*)game{
    if(!_game)
    {
        _game = [[CardMatchingGame alloc]initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}

- (PlayingCardDeck*) createDeck{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    NSUInteger chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

- (void) updateUI{
    for(UIButton *cardButton in self.cardButtons){
        NSUInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %zd", self.game.score];
    }
}

- (NSString*) titleForCard:(Card*)card{
    return card.isChosen? card.contents : @"";
}

- (UIImage*) backgroundImageForCard:(Card*)card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront": @"cardback"];
}

@end
