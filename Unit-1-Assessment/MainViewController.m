//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "MainViewController.h"




@interface MainViewController ()
{
    int i;
    NSString *value;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // do stuff
}

- (IBAction)plusButton:(id)sender {
    
    i++;
    value = [[NSString alloc] initWithFormat:@"%d", i  ];
    self.numberLabel.text = value;
    
}

- (IBAction)minusButton:(id)sender {
    
    i--;
    value = [[NSString alloc] initWithFormat:@"%d", i  ];
    self.numberLabel.text = value;
}

- (IBAction)delayPush:(id)sender {
    
    sleep(2);
}


@end
