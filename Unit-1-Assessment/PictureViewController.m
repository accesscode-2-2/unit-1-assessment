//
//  PictureViewController.m
//  Unit-1-Assessment
//
//  Created by Felicia Weathers on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PictureViewController.h"

@interface PictureViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;

@end

@implementation PictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pictureImageView.image = [self.developer image];
}

@end
