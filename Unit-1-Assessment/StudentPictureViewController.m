//
//  StudentPictureViewController.m
//  Unit-1-Assessment
//
//  Created by Jason Wang on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentPictureViewController.h"

@interface StudentPictureViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *studentUIImageView;



@end

@implementation StudentPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.studentUIImageView.image = [self.student image];
    self.navigationItem.title = self.student.name;
    self.studentUIImageView.clipsToBounds = YES;
}


@end
