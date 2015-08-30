//
//  StudentDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Bereket  on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentDetailViewController.h"

@interface StudentDetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation StudentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text=self.studentName;
    NSString *imageName = self.studentName;
    self.imageView.image= [UIImage imageNamed: imageName];
    // Do any additional setup after loading the view.
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
