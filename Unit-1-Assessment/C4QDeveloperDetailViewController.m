//
//  C4QDeveloperDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Michael Kavouras on 9/10/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QDeveloperDetailViewController.h"

@interface C4QDeveloperDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *developerImageView;

@end

@implementation C4QDeveloperDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set the title of our navigation bar
    self.navigationItem.title = self.developerName;
    
    // format the name so that it reflects the image
    // name format (no spaces, all lowercase)
    NSString *lowercaseDeveloperName = [self.developerName lowercaseString];
    
    NSString *developerImageName = [lowercaseDeveloperName stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // get the image from our assets collection
    UIImage *developerImage = [UIImage imageNamed:developerImageName];
    
    // set the image property of our image view
    self.developerImageView.image = developerImage;
    
    
    self.developerImageView.clipsToBounds = YES;
}


@end
