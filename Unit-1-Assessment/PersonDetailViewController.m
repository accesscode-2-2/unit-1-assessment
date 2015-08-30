//
//  PersonDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Lauren Caponong on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PersonDetailViewController.h"

@interface PersonDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *personImageView;

@end

@implementation PersonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.personImageView.image = [self.specificPerson image];
    self.navigationItem.title = [self.specificPerson name];
}

@end