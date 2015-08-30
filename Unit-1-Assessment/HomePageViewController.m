//
//  HomePageViewController.m
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "HomePageViewController.h"
#import "AccessCode22TableViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)pushButtonTapped:(UIButton *)sender {
    
    
    AccessCode22TableViewController *studentTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ACStudentTableViewController"];
    
    [self.navigationController pushViewController:studentTVC animated:YES];
    
    
}

- (IBAction)delayPushButtonTapped:(UIButton *)sender {
    
    
}

@end
