//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
    if(!brain) brain = [[CalculatorBrain alloc] init];
    return brain;
}


- (IBAction) digitPressed: (UIButton*) sender
{
    NSString *digit = [[sender titleLabel] text];
    
    //MARK: if user add more digits just append the number strings
    if(userIsInTheMiddleOfTypingANumber)
    {
        if
        (
            ((![[display text] containsString:@"."] && [digit isEqual:@"."]) ||
            (![digit isEqual:@"."]))
        )
        {
            BOOL showNotZeroOnTheScreen = ![[[display text] substringFromIndex:0] isEqual:@"0"];
            BOOL pressNotNullDig = ![digit isEqual:@"0"];
            
            if(showNotZeroOnTheScreen){
                if(pressNotNullDig){
                    [display setText:[[display text] stringByAppendingString:digit]];
                }else{
                    [display setText:[[display text] stringByAppendingString:@"0"]];
                }
            }else{
                if([digit isEqual:@"."]){
                    [display setText:[[display text] stringByAppendingString:digit]];
                }else{
                  [display setText:digit];
                }
            }
        }
    }
    else
    {
        [display setText:([digit isEqual:@"."])? [NSString stringWithFormat:@"%@%@", [display text], digit]  : digit];
        userIsInTheMiddleOfTypingANumber = YES;
        [self renderACButtonOperation:NO];
    }
}

- (IBAction) operationPressed: (UIButton *) sender
{
    //MARK: if operation = do not anything with operation just display it
    if(userIsInTheMiddleOfTypingANumber)
    {
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel]text];
    
    double result = [[self brain] performOperation:operation];
    if([operation isEqual:@"C"]){
        [self renderACButtonOperation:[[self brain] renderACOperation]];
    }
        
    if ([[self brain] alertError])
    {
        [self showErrorOnTheScreenBy:[[self brain] alertError]];
    };
    if([operation isEqual:@"Clear"])
        {
        [[self brain] clearStorage];
        [memoryStorage setText:[NSString stringWithFormat:@"%@", @""]];
    }
    else
    {
        if(!([[self brain] storageOfMemory] == 0))
        {
             [memoryStorage setText:[NSString stringWithFormat:@"%g", [[self brain] storageOfMemory]]];
        }
    }
    [display setText:[NSString stringWithFormat:@"%g", result]];
}

- (void) renderACButtonOperation: (BOOL) isRender{
    if(isRender){
        [deleteOperation setTitle:@"AC" forState:UIControlStateNormal];
    }else{
        [deleteOperation setTitle:@"C" forState:UIControlStateNormal];
    }
}

- (void) showErrorOnTheScreenBy: (NSString*) errMessage
{
    alertError = [UIAlertController alertControllerWithTitle:@"Error! You are using the wrong operation!" message:errMessage preferredStyle:UIAlertControllerStyleAlert];
      
    [alertError addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
      
    [self presentViewController:alertError animated:YES completion:nil];
}

@end
