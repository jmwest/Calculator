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

@synthesize displayOperationParametersBox;

NSInteger firstOperand;
NSInteger secondOperand;
NSInteger operandPlaceholderInt;
NSInteger isFirstOperand = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearButtonPressed:(UIButton *)sender {
}

- (IBAction)enterButtonPressed:(UIButton *)sender {
}

- (IBAction)operandButtonPressed:(UIButton *)sender {
    NSString *operandButtonPressedString;
    operandButtonPressedString = sender.currentTitle;
    if (isFirstOperand == 0) {
        operandPlaceholderInt = firstOperand;
        if (operandButtonPressedString == @"0") {
            firstOperand = (0 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"1") {
            firstOperand = (1 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"2") {
            firstOperand = (2 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"3") {
            firstOperand = (3 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"4") {
            firstOperand = (4 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"5") {
            firstOperand = (5 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"6") {
            firstOperand = (6 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"7") {
            firstOperand = (7 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"8") {
            firstOperand = (8 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"9") {
            firstOperand = (9 + (operandPlaceholderInt * 10));
        }
    }
    
    else if (isFirstOperand == 1) {
        operandPlaceholderInt = secondOperand;
        if (operandButtonPressedString == @"0") {
            secondOperand = (0 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"1") {
            secondOperand = (1 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"2") {
            secondOperand = (2 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"3") {
            secondOperand = (3 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"4") {
            secondOperand = (4 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"5") {
            secondOperand = (5 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"6") {
            secondOperand = (6 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"7") {
            secondOperand = (7 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"8") {
            secondOperand = (8 + (operandPlaceholderInt * 10));
        }
        else if (operandButtonPressedString == @"9") {
            secondOperand = (9 + (operandPlaceholderInt * 10));
        }
    }
}

- (IBAction)operationButtonPressed:(UIButton *)sender {
}

@end
