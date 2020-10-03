//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Виталий Шаповалов on 24.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorBrain : NSObject
{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    double delimer;
    bool renderACOperation;
    double storage;
    NSString *alertError;
    NSString *historyOperation;
}

- (BOOL) renderACOperation;
- (void) setOperand:(double)aDouble;
- (double)performOperation:(NSString*) operation;
- (NSString*) alertError;
- (double) storageOfMemory;
- (void) clearStorage;
- (NSString*) historyOperation;

@end

NS_ASSUME_NONNULL_END
