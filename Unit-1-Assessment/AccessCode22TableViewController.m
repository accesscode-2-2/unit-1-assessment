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
    
    //create an instance of indexPath for the table view...??...REVIEW
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    //Create a string to represent the pokeName, from an instance of Pokemon in the tableData array at each index path row
    
    AccessCodeStudent *student = self.model.students [indexPath.row];
    NSString *studentName = student.name;
    
    NSString *studentPhotoName = [student createImageNameWith: studentName];
    
    //create an instance of the pokeDexViewController in segue to set the pokeName & PokeImageName
    ProfilePhotoViewController *vc = segue.destinationViewController;
    
    //studentName is a property of the pokeDexViewController(.h), getter/setter
    vc.studentName = studentName;
    
    //studentPhotoName is also a property of the pokeDexViewController(.h), getter/setter
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
