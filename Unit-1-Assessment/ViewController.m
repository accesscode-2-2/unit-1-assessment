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
@property (weak, nonatomic) IBOutlet UILabel *number;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
    // do stuff
    
    NSInteger calculationResult = 55;
    self.number.text = [NSString stringWithFormat: @"%ld", (long)calculationResult];
}

- (IBAction)plus:(id)sender {
}

- (IBAction)minus:(id)sender {
}



@end
