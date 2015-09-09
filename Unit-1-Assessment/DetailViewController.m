//
//  DetailViewController.m
//  Unit-1-Assessment
//
//  Created by Xiulan Shi on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailViewController.h"
#import "Developers.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.currentDev;
    
    NSString *imageName = [self.currentDev stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *imageName1 = [imageName lowercaseString];
    
    self.imageView.image = [UIImage imageNamed:imageName1];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
