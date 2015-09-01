//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberLabel.text = @"0";

}

- (IBAction)increment:(UIButton *)sender {
    self.number++;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", self.number];
}

- (IBAction)decrement:(UIButton *)sender {
    self.number--;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", self.number];
}
- (IBAction)delayPush:(UIButton *)sender {
    
    sleep(2);
    
    UITableViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"DestinationController"];
    
    [self.navigationController pushViewController:controller animated:YES];

}

@end
