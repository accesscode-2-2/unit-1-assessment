//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "C4QTableViewController.h"
#import "C4Qmodel.h"

@interface ViewController ()

@property (nonatomic) NSInteger labelNumber;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelNumber = 0;
   
}
- (IBAction)addButtonPressed:(UIButton *)sender {
    self.labelNumber += 1;
    [self updateTextLabel];
}
- (IBAction)subtractButtonPressed:(UIButton *)sender {
    self.labelNumber -=1;
    [self updateTextLabel];
}

-(void)updateTextLabel{
    self.displayLabel.text = [NSString stringWithFormat:@"%ld",self.labelNumber];
}

- (IBAction)delayPushButtonPressed:(UIButton *)sender {
    
[self performSelector:@selector(segue) withObject:self afterDelay:2];
    
}

-(void)segue{
    [self performSegueWithIdentifier:@"PUSH" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //
}

@end
