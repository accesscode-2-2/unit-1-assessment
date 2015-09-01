//
//  C4QStudentDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Jovanny Espinal on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QStudentDetailViewController.h"

@implementation C4QStudentDetailViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.studentImageView.image = [self.student image];
    self.navigationItem.title = self.student.name;
    
}
@end
