//
//  CalculatorBrain.m
//  Calculator
//
//  Created by John West on 5/17/13.
//  Copyright (c) 2013 John West. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain
@synthesize firstOperand = _firstOperand;
@synthesize secondOperand = _secondOperand;
@synthesize operandPlaceholderInt = _operandPlaceholderInt;
@synthesize isFirstOperand = _isFirstOperand;
@synthesize whatOperationToPerform = _whatOperationToPerform;
@synthesize resultOfOperation = _resultOfOperation;
@synthesize enterWasPressed = _enterWasPressed;
@synthesize displayOperationParametersLabelString = _displayOperationParametersLabelString;
@synthesize initialZeroForTheDisplayString = _initialZeroForTheDisplayString;

- (id)init
{
    self = [super init];
    if (self) {
        self.firstOperand = 0;
        self.secondOperand = 0;
        self.isFirstOperand = 1;
        self.whatOperationToPerform =3;
        self.enterWasPressed = 0;
        self.initialZeroForTheDisplayString = @"0";
    }
    return self;
}

- (void)clearValues
{
    self.firstOperand = 0;
    self.secondOperand = 0;
    self.resultOfOperation = 0;
    self.isFirstOperand = 1;
}

- (void)calculateResult
{
    if (self.enterWasPressed == 1) {
        self.firstOperand = self.resultOfOperation;
    }
    
    self.enterWasPressed = 1;
    
    if (self.whatOperationToPerform == 1) {
        self.resultOfOperation = self.firstOperand * self.secondOperand;
    }
    else if (self.whatOperationToPerform == 2) {
        self.resultOfOperation = self.firstOperand / self.secondOperand;
    }
    else if (self.whatOperationToPerform == 3) {
        self.resultOfOperation = self.firstOperand + self.secondOperand;
    }
    else if (self.whatOperationToPerform == 4) {
        self.resultOfOperation = self.firstOperand - self.secondOperand;
    }
}

- (void)newOperation
{
    if (self.enterWasPressed == 1) {
        self.firstOperand = 0;
        self.secondOperand = 0;
        self.enterWasPressed = 0;
    }
}

- (void)increaseFirstOperand
{
    
    self.operandPlaceholderInt = self.firstOperand;
    self.firstOperand = ( (self.operandPlaceholderInt * 10) + [ self.operandButtonPressedString integerValue] );
}

- (void)increaseSecondOperand
{
    self.operandPlaceholderInt = self.secondOperand;
    self.secondOperand = ( (self.operandPlaceholderInt * 10) + [self.operandButtonPressedString integerValue] );
}

- (void)setTheOperation
{
    self.isFirstOperand = 0;
    
    if (self.enterWasPressed ==1) {
        self.enterWasPressed = 0;
        self.secondOperand = 0;
        self.firstOperand = self.resultOfOperation;
    }
    
    if ([self.currentOperationString isEqualToString:@"*"])
    {
        self.whatOperationToPerform = 1;
    }
    else if ([self.currentOperationString isEqualToString:@"/"])
    {
        self.whatOperationToPerform = 2;
        
    }
    else if ([self.currentOperationString isEqualToString:@"+" ])
    {
        self.whatOperationToPerform = 3;
        
    }
    else if ([self.currentOperationString isEqualToString:@"--"])
    {
        self.whatOperationToPerform = 4;
    }
}

@end
