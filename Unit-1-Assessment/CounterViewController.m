//
//  CounterViewController.m
//  Unit-1-Assessment
//
//  Created by Christian Maldonado on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CounterViewController.h"

@interface CounterViewController ()
@property (weak, nonatomic) IBOutlet UIButton *upButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *downButtonTapped;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UIView *delayButton;

//-(void)buttonCount;

@end

@implementation CounterViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.valueLabel.text = @"0";
}


- (IBAction)upButtonTapped:(id)sender {
    
    self.numbers++;
      [self.valueLabel setText:[NSString stringWithFormat:@"%@", @(self.numbers)]];
}

- (IBAction)downButtonTapped:(id)sender {
    
    self.numbers--;
    [self.valueLabel setText:[NSString stringWithFormat:@"%@", @(self.numbers)]];
}

-(IBAction)delayButtonTapped:(id)sender{
    sleep(2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
