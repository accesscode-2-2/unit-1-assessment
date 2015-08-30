//
//  StudentListTableViewController.m
//  Unit-1-Assessment
//
//  Created by Chris David on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "StudentListTableViewController.h"
#import "StudentDetailViewController.h"
#import "List.h"

@interface StudentListTableViewController ()
@property (nonatomic) NSMutableArray *students;

@end

@implementation StudentListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"C4Q";
    self.students = [[NSMutableArray alloc] init];
    
    for (NSString *name in [List allStudents]) {
        List *pupil = [[List alloc] init];
        pupil.name = name;
        pupil.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];

        
        [self.students addObject:pupil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    List *student = [self.students objectAtIndex:indexPath.row];
    StudentDetailViewController *vc = segue.destinationViewController;
    vc.C4qStudent = student;
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
    List *student = [self.students objectAtIndex:indexPath.row];
    cell.textLabel.text = student.name;
    cell.imageView.image = [student image];
    return cell;
}



@end
