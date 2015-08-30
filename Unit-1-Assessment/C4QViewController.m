//
//  C4QViewController.m
//  Unit-1-Assessment
//
//  Created by Jackie Meggesto on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QViewController.h"

@interface C4QViewController ()

@end

@implementation C4QViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:self.formattedString];
    [self.DevImage setImage:image];
    self.DevImage.contentMode = UIViewContentModeScaleAspectFill;
    self.navigationItem.title = self.originalString;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
