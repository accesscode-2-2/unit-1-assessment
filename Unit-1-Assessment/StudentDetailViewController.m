//
//  StudentDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Chris David on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentDetailViewController.h"
#import "StudentListTableViewController.h"
#import "List.h"

@interface StudentDetailViewController ()

@end

@implementation StudentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = [self.C4qStudent name];
    self.studentImageView.image = [self.C4qStudent image];
   
}





@end
