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

@end

@implementation ViewController

 int number = 0;
 NSTimer *timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numberLabel.text = [NSString stringWithFormat:@"%i", number];
}

- (IBAction)addButtonTapped:(id)sender {
    number ++;
    self.numberLabel.text = [NSString stringWithFormat:@"%i", number];
    
}
- (IBAction)decreaseButtonTapped:(id)sender {
    number --;
    self.numberLabel.text = [NSString stringWithFormat:@"%i", number];
    
}
- (IBAction)delayPushButtonTapped:(id)sender {
    sleep(2.0);
}
@end
