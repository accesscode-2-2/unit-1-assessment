//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "StudentListTableViewController.h"
#import "StudentDetailViewController.h"
#import "List.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (nonatomic) NSInteger sum;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sum = 0;
   
    
}

- (IBAction)addButton:(id)sender {
    self.sum = self.sum + 1;
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", (long)self.sum];
  
}

- (IBAction)subtractButton:(id)sender {
    self.sum = self.sum - 1;
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", (long)self.sum];
}
- (IBAction)pushButton:(id)sender {
}
- (IBAction)delayPushButton:(id)sender {
    [NSTimer scheduledTimerWithTimeInterval:5.0
                                     target:self selector:@selector(method:) userInfo:nil repeats:NO];

}


- (void)method:(NSTimer *)timer{
        
        [timer invalidate];
        timer = nil;
        
        StudentListTableViewController * studentTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"StudentListTableViewController"];
        [self.navigationController pushViewController:studentTVC animated:YES];
        
    }

@end
