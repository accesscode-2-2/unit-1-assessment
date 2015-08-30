//
//  NameDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Eric Sze on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "NameDetailViewController.h"

@interface NameDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *personImageView;


@end

@implementation NameDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = [self.names name];

    self.personImageView.image = [self.names image];

    
}

@end

