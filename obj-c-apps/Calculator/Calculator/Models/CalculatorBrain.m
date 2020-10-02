//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

//MARK: NEED TO FIX BUG EXAMPLE 5 - and many operations

#import "CalculatorBrain.h"
#include <math.h>

@implementation CalculatorBrain

- (void) setOperand:(double)aDouble
{
    operand = aDouble;
}

- (BOOL) renderACOperation
{
    return renderACOperation;
}

- (NSString*) alertError
{
    return alertError;
}

- (void) operationWithEqual: (double) waitingOperandResult lastOperation: (NSString*) operation
{
    if([operation isEqual:@"="])
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
}

- (void) performWaitingOperation: operation
{
    if([@"+" isEqual:waitingOperation])
    {
        [self operationWithEqual:
        (delimer) ? waitingOperand + delimer : waitingOperand + operand
                               lastOperation : operation
        ];
    }
    else if ([@"*" isEqual:waitingOperation])
    {
        [self operationWithEqual:
         (delimer) ? waitingOperand * delimer : waitingOperand * operand
                                lastOperation : operation
         ];
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        [self operationWithEqual:
         (delimer) ? waitingOperand - delimer : waitingOperand - operand
                                lastOperation : operation
         ];
    }
    else if([@"/" isEqual:waitingOperation])
    {
        if(operand)
        {
            [self operationWithEqual:
             (delimer) ? waitingOperand / delimer : waitingOperand / operand
                                    lastOperation : operation
             ];
        }
    }
}

- (double)performOperation:(NSString*) operation
{
    if([operation isEqual:@"Store"] || [operation isEqual:@"Recall"] || [operation isEqual:@"m+"])
    {
        if([operation isEqual:@"Store"])
        {
            storage = operand;
        }
        else if([operation isEqual:@"Recall"])
        {
            if(storage)
            {
                operand = storage;
            }
        }
        else if([operation isEqual:@"m+"])
        {
            if(operand)
            {
                storage += operand;
            }
        }
    }
    else if([operation isEqual:@"sin"] || [operation isEqual:@"cos"])
    {
        double numOfPI = M_PI;
        if([operation isEqual:@"sin"])
        {
            numOfPI = (operand != 180) ? M_PI : 0;
        }
        operand = ([operation isEqual:@"sin"]) ?
        sin(operand * (numOfPI) / 180.0) :
        cos(operand* (numOfPI) /180.0);
    }
    else if([operation isEqual:@"π"])
    {
        operand = M_PI;
    }
    else if([operation isEqual:@"1/x"])
    {
        if(operand)
        {
           operand = 1 / operand;
        }
    }
    else if([operation isEqual:@"sqrt"])
    {
        if(operand > 0){
            operand = sqrt(operand);
        }
    }
    else if([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else if([@"AC" isEqual:operation] || [@"C" isEqual:operation])
    {
        if([@"AC" isEqual:operation])
        {
            waitingOperation = nil;
            waitingOperand = 0;
        }
        {
            renderACOperation = YES;
        }
        operand = 0;
    }
    else
    {
        [self performWaitingOperation: operation];

        if(![operation isEqual:@"="])
        {
            delimer = 0;
            waitingOperation = operation;
            waitingOperand = operand;
        }
    }
    [self checkOnError: operation];
    return operand;
}

- (void) checkOnError: (NSString*) operation
{
    if(([waitingOperation isEqual:@"/"] && [operation isEqual:@"="]) || [operation isEqual:@"sqrt"])
    {
        if(!operand && waitingOperand != operand)
        {
            alertError = @"Divide by zero!";
        }
        else if(operand < 0)
        {
            alertError = @"Square root of negative number!";
        }
        else
        {
            alertError = nil;
        }
    }
    else
    {
        alertError = nil;
    }
}

- (double) storageOfMemory
{
    return storage;
}

- (void) clearStorage
{
    storage = 0;
}

@end
