//
//  CQMainViewController.m
//  Unit-1-Assessment
//
//  Created by Ayuna Vogel on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

// REQUIREMENTS
//    The + button should increase the number in the label by 1
//    The - button should decrease the number in the label by 1
//    The push button should transition to the table view controller
//    The delay push button should transition to the table view controller after a 2 second delay

#import "CQMainViewController.h"
#import "CQDevsTableViewController.h"

@interface CQMainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSInteger number;
@property (weak, nonatomic) IBOutlet UIButton *plusButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *minusButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *delayPushButtonTapped;

@end

@implementation CQMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.number = 0;
    self.label.text = [NSString stringWithFormat:@"%ld", (long)self.number];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)plusButtonTapped:(id)sender {
    self.number ++;
    self.label.text = [NSString stringWithFormat:@"%ld", (long)self.number];
}

- (IBAction)minusButtonTapped:(id)sender {
    self.number --;
    self.label.text = [NSString stringWithFormat:@"%ld", (long)self.number];
}

- (IBAction)delayPushButtonTapped:(id)sender {
    //delays push segue for 2 seconds
    [self performSelector:@selector(pushSegueWithDelay) withObject:nil afterDelay:2];
}

- (void)pushSegueWithDelay {
    
    CQDevsTableViewController *devsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CQDevsTableViewController"];
    
    [self.navigationController pushViewController:devsVC animated:YES];
}

@end
