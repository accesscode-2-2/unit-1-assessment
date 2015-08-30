//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *plusButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *minusButtonTapped;

@property (weak, nonatomic) IBOutlet UILabel *digitsNumberLabel;

@property (weak, nonatomic) IBOutlet UIButton *pushButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *dontPushButtonTapped;

@property (nonatomic) int numberOfTimesTapped;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberOfTimesTapped = 0;
    
}


- (IBAction)plusButtonTapped:(id)sender {
    
    self.numberOfTimesTapped++;
    
    [self.digitsNumberLabel setText:[NSString stringWithFormat:@"%d", self.numberOfTimesTapped]];

}

- (IBAction)minusButtonTapped:(id)sender {
    
    self.numberOfTimesTapped--;
    
       [self.digitsNumberLabel setText:[NSString stringWithFormat:@"%d", self.numberOfTimesTapped]];
}


- (IBAction)delayPushButtonTapped:(id)sender {
    
    sleep(2);
    
    
}

@end
