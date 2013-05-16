//
//  CalculatorViewController.h
//  Calculator
//
//  Created by John West on 5/16/13.
//  Copyright (c) 2013 John West. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController
- (IBAction)clearButtonPressed:(UIButton *)sender;
- (IBAction)enterButtonPressed:(UIButton *)sender;
- (IBAction)operandButtonPressed:(UIButton *)sender;
- (IBAction)operationButtonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *displayOperationParametersBox;

@end
