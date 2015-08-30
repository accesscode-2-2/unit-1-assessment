//
//  CQMainViewController.m
//  Unit-1-Assessment
//
//  Created by Ayuna Vogel on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQMainViewController.h"

// REQUIREMENTS
//    The + button should increase the number in the label by 1
//    The - button should decrease the number in the label by 1
//    The push button should transition to the table view controller
//    The delay push button should transition to the table view controller after a 2 second delay

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
    
   // [self performSegueWithIdentifier:@"CQDevsTableViewController" sender:sender afterDelay:2];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
 
 [self performSegueWithIdentifier:@"CQDevsTableViewController" sender:sender];
 [self performSelector:@selector(goToNextView) withObject:nil afterDelay:5];
 }
 }
*/

@end
