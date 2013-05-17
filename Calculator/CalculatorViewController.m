//
//  CalculatorViewController.m
//  Calculator
//
//  Created by John West on 5/16/13.
//  Copyright (c) 2013 John West. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize displayOperationParametersLabel = _displayOperationParametersLabel;

NSInteger firstOperand = 0;
NSInteger secondOperand = 0;
NSInteger operandPlaceholderInt;
NSInteger isFirstOperand = 1;
NSInteger whatOperationToPerform = 3;
NSInteger resultOfOperation;
NSInteger enterWasPressed = 0;
NSString *displayOperationParametersLabelString;
NSString *initialZeroForTheDisplayString = @"0";


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.displayOperationParametersLabel setText:initialZeroForTheDisplayString];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) displayResultOfOperation
{
    NSString *resultOfOperationString = [NSString stringWithFormat:@"%d", resultOfOperation];
    [self.displayOperationParametersLabel setText:resultOfOperationString];
}

- (void) displayFirstOperand
{
    NSString *firstOperandString = [NSString stringWithFormat:@"%d", firstOperand];
    [self.displayOperationParametersLabel setText:firstOperandString];
    
    displayOperationParametersLabelString = firstOperandString;
}

- (void) displaySecondOperand
{
    NSString *secondOperandString = [NSString stringWithFormat:@"%d", secondOperand];
    [self.displayOperationParametersLabel setText:secondOperandString];
}

- (void) displayOperationSymbol
{
   
    if (whatOperationToPerform == 1) {
        NSString *multiplyString = @"*";
        [self.displayOperationParametersLabel setText:multiplyString];
    }
    
    if (whatOperationToPerform == 2) {
        NSString *divideString = @"/";
        [self.displayOperationParametersLabel setText:divideString];
    }
    
    if (whatOperationToPerform == 3) {
        NSString *additionString = @"+";
        [self.displayOperationParametersLabel setText:additionString];
    }

    if (whatOperationToPerform == 4) {
        NSString *subtractionString = @"-";
        [self.displayOperationParametersLabel setText:subtractionString];
    }
}

- (void) resetDisplayText
{
    [self.displayOperationParametersLabel setText:@"0"];

}

- (IBAction)clearButtonPressed:(UIButton *)sender {
    firstOperand = 0;
    secondOperand = 0;
    isFirstOperand = 1;
    [self resetDisplayText];
}

- (IBAction)enterButtonPressed:(UIButton *)sender {
    NSLog(@"%d",whatOperationToPerform);
    NSLog(@"%d",firstOperand);
    NSLog(@"%d",secondOperand);
    
    if (enterWasPressed == 1) {
        firstOperand = resultOfOperation;
    }
    
    enterWasPressed = 1;
    
    if (whatOperationToPerform == 1) {
        resultOfOperation = firstOperand * secondOperand;
    }
    else if (whatOperationToPerform == 2) {
        resultOfOperation = firstOperand / secondOperand;
    }
    else if (whatOperationToPerform == 3) {
        resultOfOperation = firstOperand + secondOperand;
    }
    else if (whatOperationToPerform == 4) {
        resultOfOperation = firstOperand - secondOperand;
    }
    
    
    
    NSLog(@"%d",resultOfOperation);
    [self displayResultOfOperation];
}

- (IBAction)operandButtonPressed:(UIButton *)sender {

    NSString *operandButtonPressedString;
    operandButtonPressedString = sender.currentTitle;

    if (enterWasPressed == 1) {
        firstOperand = 0;
        secondOperand = 0;
        enterWasPressed = 0;
    }
    
    if ( (isFirstOperand == 1) && (firstOperand < 99999) ) {
        operandPlaceholderInt = firstOperand;
        firstOperand = ( (operandPlaceholderInt * 10) + [operandButtonPressedString integerValue] );

        [self displayFirstOperand];
    }
    
    else if ( (isFirstOperand == 0) && (secondOperand < 99999) ){
        operandPlaceholderInt = secondOperand;
        secondOperand = ( (operandPlaceholderInt * 10) + [operandButtonPressedString integerValue] );
        [self displaySecondOperand];
        
    }
}

- (IBAction)operationButtonPressed:(UIButton *)sender {
    
    isFirstOperand = 0;
   
    if (enterWasPressed ==1) {
        enterWasPressed = 0;
        isFirstOperand = 0;
        secondOperand = 0;
        firstOperand = resultOfOperation;
    }
    
    NSString *currentOperationString = sender.currentTitle;

    if ([currentOperationString isEqualToString:@"*"]) {
        whatOperationToPerform = 1;
        [self displayOperationSymbol];

    }
    else if ([currentOperationString isEqualToString:@"/"]) {
        whatOperationToPerform = 2;
        [self displayOperationSymbol];

    }
    else if ([currentOperationString isEqualToString:@"+" ]) {
        whatOperationToPerform = 3;
        [self displayOperationSymbol];

    }
    else if ([currentOperationString isEqualToString:@"--"]) {
        whatOperationToPerform = 4;
        [self displayOperationSymbol];

    }
}

@end
