//
//  ViewController2.m
//  Unit-1-Assessment
//
//  Created by Daniel Distant on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController2.h"
#import "TableViewController.h"


@interface ViewController2 ()

@end

@implementation ViewController2



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set nav item title
    
    self.navigationItem.title = self.devName;
    self.devImage.image = [UIImage imageNamed:self.devImageName];
}


@end
