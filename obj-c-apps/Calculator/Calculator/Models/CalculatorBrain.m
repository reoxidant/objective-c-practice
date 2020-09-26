//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void) setOperand:(double)aDouble
{
    operand = aDouble;
}

- (BOOL) renderACOperation{
    return renderACOperation;
}

- (void) performWaitingOperation: operation
{
    if([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"*" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        if(waitingOperand >= operand){
            operand = operand - waitingOperand;
        }else{
            operand = waitingOperand - operand;
        }
    }
    else if([@"/" isEqual:waitingOperation])
    {
        if(operand)
        {
            operand = operand / waitingOperand;
        }
    }
}

- (double)performOperation:(NSString*) operation
{
    //MARK: ignore if operation is =
    if([operation isEqual:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else if([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else if([@"AC" isEqual:operation])
    {
        waitingOperation = nil;
        waitingOperand = 0;
    }
    else if([@"C" isEqual:operation])
    {
        waitingOperand = operand;
        operand = 0;
        renderACOperation = YES;
    }
    else
    {
        if([operation isEqual:@"="]){
            //MARK: fix when click more and more operation button
            [self performWaitingOperation: operation];
            
        }
        if(operand && ![operation isEqual:@"="]){
            waitingOperation = operation;
            waitingOperand = operand;
        }
        
        NSLog(@"operand %g", operand);
        NSLog(@"waitingOperand %g", waitingOperand);
    }
    return operand;
}

@end
