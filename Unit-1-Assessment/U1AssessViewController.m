//
//  U1AssessViewController.m
//  Unit-1-Assessment
//
//  Created by Eric Sanchez on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "U1AssessViewController.h"
#import "TableViewController.h"

@interface U1AssessViewController ()

@end

@implementation U1AssessViewController


- (IBAction)plusButtonTapped:(id)sender {
//self.upDown = 0;
self.upDown++;
[self.plusMinusLabel setText:[NSString stringWithFormat:@"%ld", (long)self.upDown]];
}
- (IBAction)minusButtonTapped:(id)sender {
self.upDown--;
[self.plusMinusLabel setText:[NSString stringWithFormat:@"%ld", (long)self.upDown]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	}
	
    
- (void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	
		double delayInSeconds = 2.0;
		dispatch_time_t pushTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
		dispatch_after(pushTime, dispatch_get_main_queue(), ^(void){
			[self performSegueWithIdentifier:@"pushDelayIdentifier" sender:self];
		});
		
	}


@end
