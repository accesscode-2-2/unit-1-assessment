//
//  ProfilePhotoViewController.m
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ProfilePhotoViewController.h"

@interface ProfilePhotoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ProfilePhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = self.studentPhoto;
    self.navigationItem.title = self.studentName;
    
}

@end
