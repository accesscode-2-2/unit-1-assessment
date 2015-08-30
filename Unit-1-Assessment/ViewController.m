//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "C4QTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *incrementLabel;
@property (nonatomic) NSTimer* delayPush;

@end

@implementation ViewController

-(void)setUpDelayPush {
    self.delayPush = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(fireDelayPushTimer) userInfo:nil repeats:NO];
    [[NSRunLoop mainRunLoop] addTimer:self.delayPush forMode:NSRunLoopCommonModes];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)plusButton:(id)sender {
    self.incrementLabel.text = [NSString stringWithFormat:@"%d", [self.incrementLabel.text intValue] +1];
}
- (IBAction)minusButton:(id)sender {
 self.incrementLabel.text = [NSString stringWithFormat:@"%d", [self.incrementLabel.text intValue] -1];
}
-(void)fireDelayPushTimer {
    C4QTableViewController *pushTable = [self.storyboard instantiateViewControllerWithIdentifier:@"C4QTableViewController"];
    
    [self.navigationController pushViewController:pushTable animated:YES];
}
- (IBAction)pushButton:(id)sender {
    C4QTableViewController *pushTable = [self.storyboard instantiateViewControllerWithIdentifier:@"C4QTableViewController"];
    
    [self.navigationController pushViewController:pushTable animated:YES];
}
- (IBAction)delayPushButton:(id)sender {
    [self setUpDelayPush];
}


@end
