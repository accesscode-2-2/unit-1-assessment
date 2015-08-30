//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _number = 0;

}

- (IBAction)plusButtonTapped:(id)sender {
    
    _number = _number + 1;
    
    self.numberLabel.text = [NSString stringWithFormat:@"%d", _number];
    
}

- (IBAction)minusButtonTapped:(id)sender {
    
    _number = _number - 1;
    
    self.numberLabel.text = [NSString stringWithFormat:@"%d", _number];
    
}

- (IBAction)pushButtonTapped:(id)sender {
    
}

- (IBAction)delayPushButtonTapped:(id)sender {
    
    sleep(2);
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    TableViewController *tableViewController = [storyboard instantiateViewControllerWithIdentifier:@"tvc"];
    
    [self.navigationController pushViewController: tableViewController animated:YES];
}

@end
