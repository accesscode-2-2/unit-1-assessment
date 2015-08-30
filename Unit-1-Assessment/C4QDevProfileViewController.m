//
//  C4QDevProfileViewController.m
//  Unit-1-Assessment
//
//  Created by Brian Blanco on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QDevProfileViewController.h"

@interface C4QDevProfileViewController ()

//@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation C4QDevProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.devName;
    self.imageView.image = [UIImage imageNamed:self.imageOf];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
