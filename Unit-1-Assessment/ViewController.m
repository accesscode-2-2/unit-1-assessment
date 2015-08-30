//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "PictureViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.numberLabel.text = @"0";
}

- (IBAction)addButton:(id)sender {
    NSInteger currentNumber = [self.numberLabel.text integerValue];
    NSInteger nextNumber = currentNumber + 1;
    
    self.numberLabel.text = [NSString stringWithFormat:@"%li", (long)nextNumber];

}

- (IBAction)subtractButton:(id)sender {
    NSInteger currentNumber = [self.numberLabel.text integerValue];
    NSInteger nextNumber = currentNumber - 1;
    
    self.numberLabel.text = [NSString stringWithFormat:@"%li", (long)nextNumber];

}
- (IBAction)pushButton:(id)sender {
    
}
- (IBAction)delayPushButton:(id)sender {
    sleep(2);
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
}

@end
