//
//  TestDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Elber Carneiro on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TestDetailViewController.h"

@interface TestDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *studentImage;
@end

@implementation TestDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.studentName;

    self.studentImage.image = [UIImage imageNamed:[[self.studentName stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString]];

}

@end
