//
//  CQDevDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Ayuna Vogel on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQDevDetailViewController.h"

@interface CQDevDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CQDevDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.devName; 
    self.imageView.image = [UIImage imageNamed:self.imageName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
