//
//  UnitAssessVC.h
//  Unit-1-Assessment
//
//  Created by Krishna Picart on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnitAssessVC : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@property (weak, nonatomic) IBOutlet UIButton *subtractButton;
@property (weak, nonatomic) IBOutlet UILabel *numberTextField;


@property (strong,nonatomic)NSMutableArray *accessCode22;
- (IBAction)addButtonAction:(id)sender;
- (IBAction)subtractButton:(id)sender;


@end
