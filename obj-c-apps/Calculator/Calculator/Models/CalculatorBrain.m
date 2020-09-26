//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

//MARK: NEED TO FIX C OPERATION
//MARK: NEED TO FIX OPERAION - = FOR EXAMPLE 5 - = 0, = -5
//MARK: NEED TO FIX OPERAION / = FOR EXAMPLE 5 / = 1, = 0.2

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void) setOperand:(double)aDouble
{
    operand = aDouble;
}

- (BOOL) renderACOperation{
    return renderACOperation;
}

- (void) operationWithEqual: (double) waitingOperandResult
{
    if(!delimer)
    {
        delimer = operand;
        waitingOperand = waitingOperandResult;
        operand = waitingOperandResult;
    }
    else
    {
        waitingOperand = waitingOperandResult;
        operand = waitingOperandResult;
    }
}

- (void) performWaitingOperation
{
    if([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"*" isEqual:waitingOperation])
    {
        [self operationWithEqual:(delimer) ? waitingOperand * delimer : waitingOperand * operand];
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        [self operationWithEqual:(delimer) ? waitingOperand - delimer : waitingOperand - operand];
    }
    else if([@"/" isEqual:waitingOperation])
    {
        if(operand)
        {
            if(operand <= waitingOperand){
                [self operationWithEqual:(delimer) ? waitingOperand / delimer : waitingOperand / operand];
            }else{
                [self operationWithEqual:(delimer) ? delimer / waitingOperand : operand / waitingOperand];
            }
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
            [self performWaitingOperation];
        }
        if(![operation isEqual:@"="]){
            delimer = 0;
            waitingOperation = operation;
            waitingOperand = operand;
        }
    }
    return operand;
}

@end
