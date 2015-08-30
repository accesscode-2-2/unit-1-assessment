//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "DevNamesTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countingLabel;
@property (nonatomic) int counter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.counter = 0;
    self.countingLabel.text = [NSString stringWithFormat:@"%d",self.counter];
    // do stuff
}
- (IBAction)plusButtonTapped:(UIButton *)sender {
    
    self.counter += 1;
    [self updateLabel];
    
}
- (IBAction)minusButtonTapped:(UIButton *)sender {
    
    self.counter-=1;
    [self updateLabel];
    
}

- (IBAction)delayedPushButtonTapped:(UIButton *)sender {
    
    NSTimer *delayPushTimer = [NSTimer timerWithTimeInterval:2.0f target:self selector:@selector(delayedPush:) userInfo:nil repeats:NO];
    [[NSRunLoop currentRunLoop] addTimer:delayPushTimer forMode:NSRunLoopCommonModes];
}

- (void)delayedPush:(NSTimer *)timer{
    
    [timer invalidate];
    timer = nil;
    
    DevNamesTableViewController * devNameTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DevNamesTableViewController"];
    [self.navigationController pushViewController:devNameTVC animated:YES];
    
}

- (void)updateLabel{
    
    self.countingLabel.text = [NSString stringWithFormat:@"%d", self.counter];
}
@end
