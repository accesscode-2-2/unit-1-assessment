//
//  ThirdViewController.m
//  Unit-1-Assessment
//
//  Created by Fatima Zenine Villanueva on 8/28/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *studentImage;
@property (nonatomic) NSString *studentNameString;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO];
    // Do any additional setup after loading the view.
    self.title = self.studentName;
    self.studentNameString = [self.studentName lowercaseString];
    self.studentNameString = [self.studentNameString stringByReplacingOccurrencesOfString:@" " withString:@""];
    self.studentImage.image = [UIImage imageNamed:self.studentNameString];
    NSLog(@"%@", self.studentNameString);
}

- (void) viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES];
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
