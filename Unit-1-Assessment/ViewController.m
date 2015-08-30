//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *subtractButton;

@property (nonatomic) int counter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.counterLabel.text = @"0";
    // do stuff
}
- (IBAction)addButton:(UIButton *)sender {
    self.counter++;
    
    self.counterLabel.text =  [NSString stringWithFormat: @"%d", self.counter];
}

- (IBAction)subtractButton:(UIButton *)sender {
    self.counter--;
    
    self.counterLabel.text = [NSString stringWithFormat: @"%d", self.counter];
}

- (IBAction)delayPushButton:(UIButton *)sender {
    sleep(2);
}

@end
