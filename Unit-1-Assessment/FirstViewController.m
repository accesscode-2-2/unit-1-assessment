//
//  FirstViewController.m
//  Unit-1-Assessment
//
//  Created by Fatima Zenine Villanueva on 8/28/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger number;
@property (nonatomic) NSString *thisNewNumber;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view.
    self.numberLabel.text = @"0";
    self.number = 0;
    NSLog(@"Label %@", self.numberLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addNumberButton:(UIButton *)sender {
    NSLog(@"Label %@", self.numberLabel.text);
    self.number++;
    NSLog(@"self.number: %lu", self.number);
    self.thisNewNumber = @(self.number).stringValue;
    self.numberLabel.text = self.thisNewNumber;
    NSLog(@"%lu", self.number);
}

- (IBAction)subtractNumberButton:(UIButton *)sender {
    NSLog(@"Label %@", self.numberLabel.text);
    self.number--;
    NSLog(@"self.number: %lu", self.number);
    self.thisNewNumber = @(self.number).stringValue;
    self.numberLabel.text = self.thisNewNumber;
    NSLog(@"%lu", self.number);
}

- (IBAction)normalPushButton:(UIButton *)sender {
    
}

- (IBAction)delayPushButton:(UIButton *)sender {
    sleep(2);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
