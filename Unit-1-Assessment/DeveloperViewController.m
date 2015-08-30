//
//  DeveloperViewController.m
//  Unit-1-Assessment
//
//  Created by Mesfin Bekele Mekonnen on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DeveloperViewController.h"

@interface DeveloperViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *developerImageView;
@end

@implementation DeveloperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.developer.name;
    self.developerImageView.image = self.developer.image;
    
   // NSLog(@"I am the view controller%@",self.developer.image);
}

@end
