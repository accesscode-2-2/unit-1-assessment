//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *output;
@property (nonatomic) NSInteger cal;
@property (weak, nonatomic) IBOutlet UIButton *delayedButton;
@property (nonatomic) NSTimer *timer;
@property (nonatomic) NSTimeInterval delayedTime;
@property (nonatomic) NSDate *startTime;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.output.text = @"0";
   
    // do stuff
}
- (IBAction)plusButton:(UIButton *)sender {
    self.cal++;
    
    self.output.text = [NSString stringWithFormat:@"%ld", self.cal];
}

- (IBAction)minusButton:(UIButton *)sender {
    self.cal--;
    
    self.output.text = [NSString stringWithFormat:@"%ld", self.cal];
    
}

- (IBAction)delayedButton:(UIButton *)sender {
    
    sleep(2);
    
}

@end
