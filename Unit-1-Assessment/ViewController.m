//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "C4QStudentsTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) int number;
@property (nonatomic) int one;
@property (weak, nonatomic) IBOutlet UIButton *delayButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.number = 0;
    
    self.one = 1;

 
}
-(void) reloadNumberLabel {
   
    self.numberLabel.text = [NSString stringWithFormat:@"%d",self.number];
    [self reloadInputViews];
    
}
- (IBAction)addButton:(UIButton *)sender {

    self.number = self.number + self.one;
    [self reloadNumberLabel];

}
- (IBAction)minusButton:(UIButton *)sender {
    
    self.number = self.number - self.one;
    [self reloadNumberLabel];
    
}
- (IBAction)pushToStudents:(UIButton *)sender {
    
    if (self.delayButton) {
    [self performSegueWithIdentifier:@"studentsSeque" sender:self];
    } else {
        nil;
    }
    
}
- (IBAction)pushWithDelay:(UIButton *)sender {
    
    
    [self performSelector:@selector(pushToStudents:) withObject:nil afterDelay:2.0];
    
}


@end
