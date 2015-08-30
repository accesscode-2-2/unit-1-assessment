//
//  TestViewController.m
//  Unit-1-Assessment
//
//  Created by Elber Carneiro on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TestViewController.h"
#import "TestTableViewController.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) NSInteger counter;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.counter = 0;
    [self loadCountLabel];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.navigationController.navigationBar.translucent = NO;
}

- (IBAction)incrementButtonPushed:(id)sender {
    self.counter++;
    [self loadCountLabel];
}

- (IBAction)decrementButtonPushed:(id)sender {
    self.counter--;
    [self loadCountLabel];
}

- (void)loadCountLabel {
    self.countLabel.text = [NSString stringWithFormat:@"%ld", self.counter];
    [self.view setNeedsDisplay];
}

- (TestTableViewController *)initializeTestTVC {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:@"testTVC"];
}

- (IBAction)pushButtonPushed:(id)sender {
    TestTableViewController *testTVC = [self initializeTestTVC];
    [self.navigationController pushViewController:testTVC animated:YES];
}

- (IBAction)delayPushButtonPushed:(id)sender {
    sleep(2);
    TestTableViewController *testTVC = [self initializeTestTVC];
    [self.navigationController pushViewController:testTVC animated:YES];
}

@end
