//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *plusOneButtonPressed;
@property (weak, nonatomic) IBOutlet UIButton *minusOneButtonPressed;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pushToNextScreenButton;
@property (weak, nonatomic) IBOutlet UIButton *delayPushToNextScreenButton;


@end

@implementation ViewController

 int savedNumber = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sumLabel.text = [[NSString alloc]initWithFormat:@"%d", savedNumber];
}

- (IBAction)plusOneButtonTapped:(id)sender {
    
    int currentNumber = [self.sumLabel.text intValue];
    int plusNumber = currentNumber +1;
    self.sumLabel.text = [NSString stringWithFormat:@"%d", plusNumber];
}

- (IBAction)minusOneButtonTapped:(id)sender {
    
    int currentNumber = [self.sumLabel.text intValue];
    int minusNumber = currentNumber -1;
    self.sumLabel.text = [NSString stringWithFormat:@"%d", minusNumber];
}

- (IBAction)delaySegueToView:(id)sender {
    sleep(2);
}

@end
