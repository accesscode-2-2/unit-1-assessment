//
//  SquaresViewController.m
//  Unit-1-Assessment
//
//  Created by Natalia Estrella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SquaresViewController.h"
#import "NamesTableViewController.h"


@interface SquaresViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mathLabel;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;

@end

@implementation SquaresViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mathLabel.text = @"0";
    
}

- (IBAction)plusButtonTapped:(id)sender {
    
    self.mathValue++;
    
    [self.mathLabel setText:[NSString stringWithFormat:@"%@", @(self.mathValue)]];
    
}
- (IBAction)minusButtonTapped:(id)sender {
    self.mathValue --;
    
    [self.mathLabel setText:[NSString stringWithFormat:@"%@", @(self.mathValue)]];
    
}
- (IBAction)delayPush:(id)sender {

    [self performSelector:@selector(pushMyStuff) withObject:nil afterDelay:2.0];
    
    
//    NamesTableViewController *destination = [sender destinationViewController];
    
//
//    NSTimer *delayPush = [NSTimer timerWithTimeInterval:0.1 target:destination selector:@selector(delayPush:) userInfo:nil repeats:NO];
    
//    [[NSRunLoop currentRunLoop] addTimer:delayPush forMode:NSRunLoopCommonModes];
}

- (void)pushMyStuff {
    NSLog(@"called after 2 seconds");
    
    NamesTableViewController *namesTabelViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NamesTableViewController"];
    
    [self.navigationController pushViewController:namesTabelViewController animated:YES];
}



//- (void)randomSelector:(NSString *)timer {
//
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
