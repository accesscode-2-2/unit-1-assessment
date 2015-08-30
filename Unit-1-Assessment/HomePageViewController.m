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

@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@end

@implementation HomePageViewController

- (IBAction)pushButtonTapped:(UIButton *)sender {
    
    
    AccessCode22TableViewController *studentTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ACStudentTableViewController"];
    
    [self.navigationController pushViewController:studentTVC animated:YES];
    
    
}

- (IBAction)delayPushButtonTapped:(UIButton *)sender {
    
    AccessCode22TableViewController *studentTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ACStudentTableViewController"];
    
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDelay:2.0];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
                           forView:self.navigationController.view cache:NO];
    
    [self.navigationController pushViewController:studentTVC animated:YES];
    [UIView commitAnimations];
    
}



- (IBAction)addButtonTapped:(UIButton *)sender {
    
    int n = [self.counterLabel.text intValue];
    n += 1;
    self.counterLabel.text = [NSString stringWithFormat:@"%d", n];

}

- (IBAction)subtractButtonTapped:(UIButton *)sender {
    
    int n = [self.counterLabel.text intValue];
    n -= 1;
    self.counterLabel.text = [NSString stringWithFormat:@"%d", n];

}

@end
