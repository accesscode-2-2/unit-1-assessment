//
//  C4QDeveloperImageViewController.m
//  Unit-1-Assessment
//
//  Created by Z on 8/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QDeveloperImageViewController.h"

@interface C4QDeveloperImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation C4QDeveloperImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //adjusts format of developer string to match format of image file name
    
    self.developer = [[self.developer lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    self.imageView.image = [UIImage imageNamed:self.developer];
}

@end
