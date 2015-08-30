//
//  StudentTableViewController.m
//  Unit-1-Assessment
//
//  Created by Jason Wang on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentTableViewController.h"
#import "StudentList.h"
#import "StudentPictureViewController.h"

@interface StudentTableViewController ()

@property (nonatomic) NSMutableArray *students;

@end

@implementation StudentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"C4Q Students";
    
    self.students = [[NSMutableArray alloc] init];
    for (NSString *name in [StudentList allStudents]) {
        StudentList *student = [[StudentList alloc] init];
        student.name = name;
        student.imageString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        [self.students addObject:student];
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indextPath = [self.tableView indexPathForSelectedRow];
    StudentList *student = [self.students objectAtIndex:indextPath.row];
    StudentPictureViewController *vc = segue.destinationViewController;
    vc.student = student;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.students.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellIdentifier" forIndexPath:indexPath];
    
    StudentList *student = [self.students objectAtIndex:indexPath.row];
    
    cell.textLabel.text = student.name;
    
    return cell;
}

@end
