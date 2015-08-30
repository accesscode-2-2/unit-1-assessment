//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *plus;
@property (weak, nonatomic) IBOutlet UIButton *minus;
@property (weak, nonatomic) IBOutlet UIButton *push;
@property (weak, nonatomic) IBOutlet UILabel *number;


@end

@implementation ViewController

NSInteger num = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // do stuff
    self.number.text = [NSString stringWithFormat: @"%ld", (long)num];
    [self.plus setTitle:@"+" forState:UIControlStateNormal];
    [self.minus setTitle:@"-" forState:UIControlStateNormal];
}



- (IBAction)plus:(id)sender {
    num = num + 1;
     self.number.text = [NSString stringWithFormat: @"%ld", (long)num];
}

- (IBAction)minus:(id)sender {
    num = num - 1;
    self.number.text = [NSString stringWithFormat: @"%ld", (long)num];
    
}

- (IBAction)push:(id)sender {
   }

@end
