//
//  ThirdViewController.m
//  Unit-1-Assessment
//
//  Created by Charles Kang  on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ThirdViewController.h"
#import "FirstViewController.h"
#import "SecondTableViewController.h"

@interface ThirdViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageOfStudent;
@property (nonatomic) NSString *studentNameString;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.studentName;
    self.imageOfStudent.image = [UIImage imageNamed:self.imageName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
