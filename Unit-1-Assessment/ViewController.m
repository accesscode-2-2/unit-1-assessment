//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger i;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.i = 0;
    self.numberLabel.text = @"0";
    
}

- (IBAction)plusButtonTapped:(UIButton *)sender {
    self.i++;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld",(long)self.i];
}

- (IBAction)minusButtonTapped:(UIButton *)sender {
    self.i--;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld",(long)self.i];
}
- (IBAction)pushButtonTapped:(UIButton *)sender {
    UIStoryboard *storyboard = self.storyboard;
    
    UITableViewController *dtvc = [storyboard instantiateViewControllerWithIdentifier:@"DeveloperTableViewController"];
    
    [self.navigationController pushViewController:dtvc animated:YES];
    
}
- (IBAction)delayPushButtonTapped:(UIButton *)sender {
    
    [self performSelector:@selector(pushViewController) withObject:self afterDelay:2.0];
    
}
-(void)pushViewController{
    UIStoryboard *storyboard = self.storyboard;
    
    UITableViewController *dtvc = [storyboard instantiateViewControllerWithIdentifier:@"DeveloperTableViewController"];
    
    [self.navigationController pushViewController:dtvc animated:YES];
    
}

@end
