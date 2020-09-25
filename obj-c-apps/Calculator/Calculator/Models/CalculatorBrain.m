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

- (void) performWaitingOperation
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
        operand = waitingOperand - operand;
    }
    else if([@"/" isEqual:waitingOperation])
    {
        if(operand)
        {
            operand = waitingOperand / operand;
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
    else
    {
        [self performWaitingOperation]; //MARK: do first when a variable below is null
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
