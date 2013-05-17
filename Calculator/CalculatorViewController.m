//
//  CalculatorViewController.m
//  Calculator
//
//  Created by John West on 5/16/13.
//  Copyright (c) 2013 John West. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController ()
@property CalculatorBrain *calculatorBrainModel;

@end

@implementation CalculatorViewController

@synthesize displayOperationParametersLabel = _displayOperationParametersLabel;
@synthesize calculatorBrainModel = _calculatorBrainModel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.calculatorBrainModel = [[CalculatorBrain alloc] init];
    
    [self.displayOperationParametersLabel setText:self.calculatorBrainModel.initialZeroForTheDisplayString];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) displayResultOfOperation
{
    NSString *resultOfOperationString = [NSString stringWithFormat:@"%d", self.calculatorBrainModel.resultOfOperation];
    [self.displayOperationParametersLabel setText:resultOfOperationString];
}

- (void) displayFirstOperand
{
    NSString *firstOperandString = [NSString stringWithFormat:@"%d", self.calculatorBrainModel.firstOperand];
    [self.displayOperationParametersLabel setText:firstOperandString];
    
    self.calculatorBrainModel.displayOperationParametersLabelString = firstOperandString;
}

- (void) displaySecondOperand
{
    NSString *secondOperandString = [NSString stringWithFormat:@"%d", self.calculatorBrainModel.secondOperand];
    [self.displayOperationParametersLabel setText:secondOperandString];
}

- (void) displayOperationSymbol
{
   
    if (self.calculatorBrainModel.whatOperationToPerform == 1) {
        NSString *multiplyString = @"*";
        [self.displayOperationParametersLabel setText:multiplyString];
    }
    
    if (self.calculatorBrainModel.whatOperationToPerform == 2) {
        NSString *divideString = @"/";
        [self.displayOperationParametersLabel setText:divideString];
    }
    
    if (self.calculatorBrainModel.whatOperationToPerform == 3) {
        NSString *additionString = @"+";
        [self.displayOperationParametersLabel setText:additionString];
    }

    if (self.calculatorBrainModel.whatOperationToPerform == 4) {
        NSString *subtractionString = @"-";
        [self.displayOperationParametersLabel setText:subtractionString];
    }
}

- (void)resetDisplayText
{
    [self.displayOperationParametersLabel setText:@"0"];

}

- (IBAction)clearButtonPressed:(UIButton *)sender {
    
    [self.calculatorBrainModel clearValues];
    [self resetDisplayText];
}

- (IBAction)enterButtonPressed:(UIButton *)sender {
    
    [self.calculatorBrainModel calculateResult];
    
    [self displayResultOfOperation];
}

- (IBAction)operandButtonPressed:(UIButton *)sender {

    self.calculatorBrainModel.operandButtonPressedString = sender.currentTitle;
    
    [self.calculatorBrainModel newOperation];
    
    if ( (self.calculatorBrainModel.isFirstOperand == 1) && (self.calculatorBrainModel.firstOperand < 99999) ) {
        
        [self.calculatorBrainModel increaseFirstOperand];
        
        [self displayFirstOperand];
    }
    
    else if ( (self.calculatorBrainModel.isFirstOperand == 0) && (self.calculatorBrainModel.secondOperand < 99999) ){
        
        [self.calculatorBrainModel increaseSecondOperand];
        
        [self displaySecondOperand];
        
    }
}

- (IBAction)operationButtonPressed:(UIButton *)sender {
    
    self.calculatorBrainModel.currentOperationString = sender.currentTitle;
    
    if ([self.calculatorBrainModel.currentOperationString isEqualToString:@"*"]) {
        [self.calculatorBrainModel setTheOperation];
        [self displayOperationSymbol];

    }
    else if ([self.calculatorBrainModel.currentOperationString isEqualToString:@"/"])
    {
        [self.calculatorBrainModel setTheOperation];
        [self displayOperationSymbol];

    }
    else if ([self.calculatorBrainModel.currentOperationString isEqualToString:@"+" ])
    {
        [self.calculatorBrainModel setTheOperation];
        [self displayOperationSymbol];

    }
    else if ([self.calculatorBrainModel.currentOperationString isEqualToString:@"--"])
    {
        [self.calculatorBrainModel setTheOperation];
        [self displayOperationSymbol];

    }
}

@end
