//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "StudentsInC4QTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)hitPlus:(id)sender {
    self.numberValue++;
    NSString* numberText= [NSString stringWithFormat:@"%ld",(long)self.numberValue];
    self.numerLabel.text= numberText;
}

- (IBAction)hitMinus:(id)sender {
    self.numberValue--;
    NSString* numberText= [NSString stringWithFormat:@"%ld",(long)self.numberValue];
    self.numerLabel.text= numberText;
}

- (IBAction)hitPush:(id)sender {
    
 
}

-(void)timerFired:(NSTimer*)timer{
    
    StudentsInC4QTableViewController* tableViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"StudentsInC4QTableViewController"];
    [self.navigationController pushViewController:tableViewController animated:YES];
    
    [self.delayPushTimer invalidate];

}

- (IBAction)hitDelayPush:(id)sender {
    
    self.delayPushTimer= [NSTimer timerWithTimeInterval:5.0 target:self selector:@selector(timerFired:) userInfo:nil repeats:NO];
    [[NSRunLoop currentRunLoop] addTimer:self.delayPushTimer forMode: NSRunLoopCommonModes];
}


@end
