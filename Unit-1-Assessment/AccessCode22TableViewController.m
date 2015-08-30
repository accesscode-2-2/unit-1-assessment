//
//  AccessCode22TableViewController.m
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AccessCode22TableViewController.h"
#import "ProfilePhotoViewController.h"
#import "AccessCodeStudentData.h"
#import "AccessCodeStudent.h"

@interface AccessCode22TableViewController ()

@property (nonatomic) AccessCodeStudentData *model;

@end

@implementation AccessCode22TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[AccessCodeStudentData alloc] init];
    [self.model initializeData];
    
    self.navigationItem.title = @"Access Code 2.2";
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    AccessCodeStudent *student = self.model.students [indexPath.row];
    NSString *studentName = student.name;
    
    NSString *studentPhotoName = [student createImageNameWith: studentName];
    
    ProfilePhotoViewController *vc = segue.destinationViewController;
    
    vc.studentName = studentName;
    
    vc.studentPhoto = [UIImage imageNamed:studentPhotoName];
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.model.students.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"studentPhotoCellReuseIdentifier" forIndexPath:indexPath];
    
    AccessCodeStudent *student = self.model.students [indexPath.row];
    
    NSString *studentPhotoName = [student createImageNameWith: student.name];
    
    cell.imageView.image = [UIImage imageNamed:studentPhotoName];
    
    cell.textLabel.text = student.name;
    
    return cell;
}



@end
