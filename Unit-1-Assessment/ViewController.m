//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) int number;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.number = 0;
    [self storeNumberLabel];
}

- (void)storeNumberLabel {
    self.numberLabel.text = [NSString stringWithFormat:@"%i", self.number];
}

- (IBAction)addButtonTapped:(id)sender {
    self.number ++;
    [self storeNumberLabel];
    
}
- (IBAction)decreaseButtonTapped:(id)sender {
    self.number --;
    [self storeNumberLabel];
    
}
- (IBAction)delayPushButtonTapped:(id)sender {
    sleep(2.0);
}
@end
