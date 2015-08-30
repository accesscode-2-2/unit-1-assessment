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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
    [self numStoreLabel];
   
    // do stuff
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
    [self pushViewController];
}

-(void)pushViewController {
    sleep(2);
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"StudentTableViewID"];
    [self.navigationController pushViewController:viewController animated:YES];
}











@end
