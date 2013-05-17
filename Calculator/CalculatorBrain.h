//
//  CalculatorBrain.h
//  Calculator
//
//  Created by John West on 5/17/13.
//  Copyright (c) 2013 John West. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
@property (assign, nonatomic) NSInteger firstOperand;
@property (assign, nonatomic) NSInteger secondOperand;
@property (assign, nonatomic) NSInteger operandPlaceholderInt;
@property (assign, nonatomic) NSInteger isFirstOperand;
@property (assign, nonatomic) NSInteger whatOperationToPerform;
@property (assign, nonatomic) NSInteger resultOfOperation;
@property (assign, nonatomic) NSInteger enterWasPressed;
@property (strong, nonatomic) NSString *displayOperationParametersLabelString;
@property (strong, nonatomic) NSString *initialZeroForTheDisplayString;
@property (strong, nonatomic) NSString *operandButtonPressedString;
@property (strong, nonatomic) NSString *currentOperationString;

-(void)clearValues;
-(void)calculateResult;
-(void)newOperation;
-(void)increaseFirstOperand;
-(void)increaseSecondOperand;
-(void)setTheOperation;

@end
