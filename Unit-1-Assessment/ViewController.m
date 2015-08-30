//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (nonatomic) NSInteger sum;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sum = 0;
   
    
}

- (IBAction)addButton:(id)sender {
    self.sum = self.sum + 1;
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", (long)self.sum];
  
}

- (IBAction)subtractButton:(id)sender {
    self.sum = self.sum - 1;
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", (long)self.sum];
 
    
}

@end
