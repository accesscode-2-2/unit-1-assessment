//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "C4QDeveloperListTableViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger numberValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numberValue = 0;
}

- (IBAction)plusButtonTapped:(id)sender {
//    NSInteger currentValue = [self.numberLabel.text integerValue];
//    NSInteger nextValue = currentValue + 1;
//    self.numberLabel.text = [NSString stringWithFormat:@"%ld", nextValue];
    
    self.numberValue++;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", self.numberValue];
}

- (IBAction)minusButtonTapped:(id)sender {
//    NSInteger currentValue = [self.numberLabel.text integerValue];
//    NSInteger nextValue = currentValue - 1;
//    self.numberLabel.text = [NSString stringWithFormat:@"%ld", nextValue];
    
    self.numberValue--;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", self.numberValue];
}

- (IBAction)delayPushButtonTapped:(id)sender {
//    [self performSelector:@selector(delayPush) withObject:nil afterDelay:1.0];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(delayPush) userInfo:nil repeats:NO];
}

- (void)delayPush {
    C4QDeveloperListTableViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ListViewController"];

    [self.navigationController pushViewController:viewController animated:YES];
}

@end









