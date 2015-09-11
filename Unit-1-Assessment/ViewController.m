//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "StudentTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSInteger count;
@property (weak, nonatomic) IBOutlet UIButton *pushButton;
@property (weak, nonatomic) IBOutlet UIButton *delayPushButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
    [self numStoreLabel];
}
- (IBAction)plusButton:(UIButton *)sender {
    self.count += 1;
    [self numStoreLabel];
    
}
- (IBAction)minusButton:(UIButton *)sender {
    self.count -= 1;
    [self numStoreLabel];
}

-(void)numStoreLabel {
    self.label.text = [NSString stringWithFormat:@"%ld",(long)self.count];
    
}
- (IBAction)delayPushButton:(UIButton *)sender {
//    [self performSelector:@selector(pushViewController) withObject:nil afterDelay:2.0];
    
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(pushViewController) userInfo:nil repeats:NO];
    self.pushButton.enabled = NO;
    self.delayPushButton.enabled = NO;
    
}


-(void)pushViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"StudentTableViewID"];
    [self.navigationController pushViewController:viewController animated:YES];
}


-(void)viewWillAppear:(BOOL)animated {
    self.pushButton.enabled = YES;
    self.delayPushButton.enabled = YES;
}








@end
