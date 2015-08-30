//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *PlusSignButtonTapped;
@property (weak, nonatomic) IBOutlet UIButton *MinusSignButtonTapped;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *CountLabel;
@property (nonatomic)NSTimer *timer;
@property (nonatomic) NSInteger *count;
@property (nonatomic) NSMutableArray *data;
;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Count";
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                           target:self
                                                         selector:@selector(updateTimer)
                                                         userInfo:nil
                                                          repeats:YES];
    
    self.data = [[NSMutableArray alloc]init];
    if (self.PlusSignButtonTapped) {
    
    }
    
   
    // do stuff
}



- (void)updateTimer {

    
}






- (IBAction)PlusSignButtonTapped:(id)sender {
    
    NSLog(@"Plus Button Works");
    
    int CountLabel = 0;
    
    ++CountLabel;
    
    
}

- (IBAction)MinusSignButtonTapped:(id)sender {
    
    
    int CountLabel = 0;
    
    CountLabel--;
    
    
}


@end
