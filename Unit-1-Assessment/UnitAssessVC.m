//
//  UnitAssessVC.m
//  Unit-1-Assessment
//
//  Created by Krishna Picart on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "UnitAssessVC.h"

@implementation UnitAssessVC

@synthesize numberTextField;

NSArray *thumbnails;
//NSArray *accessCode22;


- (void)viewDidLoad {
    [super viewDidLoad];
    }
- (IBAction)addButtonAction:(id)sender {
    
[numberTextField setText:[NSString stringWithFormat:@"%d",[numberTextField.text intValue] +1]];
    
}

- (IBAction)subtractButton:(id)sender {
   
    [numberTextField setText:[NSString stringWithFormat:@"%d",[numberTextField.text intValue] - 1]];
 
}
@end
