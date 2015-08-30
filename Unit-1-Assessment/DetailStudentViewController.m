//
//  DetailStudentViewController.m
//  Unit-1-Assessment
//
//  Created by Jamaal Sedayao on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "DetailStudentViewController.h"
#import "C4QStudentsTableViewController.h"

@interface DetailStudentViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *studentImage;




@end

@implementation DetailStudentViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = self.name;
    self.studentImage.image = [UIImage imageNamed:self.imageString];


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
