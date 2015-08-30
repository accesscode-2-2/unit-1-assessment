//
//  FirstViewController.m
//  Unit-1-Assessment
//
//  Created by Charles Kang  on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondTableViewController.h"


@interface FirstViewController ()

@property (strong, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger number;
@property (nonatomic) NSString *updatedNumber;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.numberLabel.text = @"0";
    self.number = 0;
    NSLog(@"Label %@", self.numberLabel.text);
}

- (IBAction)addButton:(id)sender {
    self.number += 1;
    [self updateNumberLabel];
}

- (IBAction)subtractButton:(id)sender {
    self.number -= 1;
    [self updateNumberLabel];
}

-(void)updateNumberLabel{
    self.numberLabel.text = [NSString stringWithFormat:@"%ld",self.number];
}



- (IBAction)pushButton:(id)sender {
    
    
}

- (IBAction)pushDelayButton:(id)sender {
    [self performSelector:@selector(pushSegueWithDelay) withObject:nil afterDelay:2];
    
    
}

- (void)pushSegueWithDelay {
    
    SecondTableViewController *devsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondTableViewController"];
    
    [self.navigationController pushViewController:devsVC animated:YES];
}
@end
