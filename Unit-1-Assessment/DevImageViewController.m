//
//  DevImageViewController.m
//  Unit-1-Assessment
//
//  Created by Christella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DevImageViewController.h"

@interface DevImageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *devPic;

@end

@implementation DevImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *imageName = [self.devName lowercaseString];
    self.devPic.image = [UIImage imageNamed:imageName];
    
    self.navigationItem.title = self.devName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
