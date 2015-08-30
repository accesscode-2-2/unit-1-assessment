//
//  StudentPictureViewController.m
//  Unit-1-Assessment
//
//  Created by Artur Lan on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentPictureViewController.h"

@interface StudentPictureViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *studentPicture;

@end

@implementation StudentPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.studentPicture.image = [self.person pictureStudent];
    [self setTitle:self.person.name];
    
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
