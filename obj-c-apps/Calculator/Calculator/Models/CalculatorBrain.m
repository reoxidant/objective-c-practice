//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

//MARK: NEED TO FIX BUG EXAMPLE 5 - and many operations

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void) setOperand:(double)aDouble
{
    operand = aDouble;
}

- (BOOL) renderACOperation{
    return renderACOperation;
}

- (void) operationWithEqual: (double) waitingOperandResult lastOperation: (NSString*) operation
{
    if([operation isEqual:@"="]){
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
            if(operand <= waitingOperand){
                [self operationWithEqual:
                 (delimer) ? waitingOperand / delimer : waitingOperand / operand
                                        lastOperation : operation
                 ];
            }else{
                [self operationWithEqual:
                 (delimer) ? delimer / waitingOperand : operand / waitingOperand
                                        lastOperation : operation
                 ];
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
        operand = 0;
        renderACOperation = YES;
    }
    else
    {
        [self performWaitingOperation: operation];

        if(![operation isEqual:@"="]){
            delimer = 0;
            waitingOperation = operation;
            waitingOperand = operand;
        }
    }
    return operand;
}

@end
