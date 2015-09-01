//
//  C4QStudentTableViewController.m
//  Unit-1-Assessment
//
//  Created by Jovanny Espinal on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QStudentTableViewController.h"
#import "C4QStudentDetailViewController.h"
#import "C4Q.h"

@implementation C4QStudentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.students = [[NSMutableArray alloc] init];
    
    for (NSString *name in [C4Q allStudents]){
        C4Q *student = [[C4Q alloc] init];
        student.name = name;
        student.imageUrlString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        [self.students addObject:student];
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    C4Q *student = [self.students objectAtIndex:indexPath.row];
    
    C4QStudentDetailViewController *vc = segue.destinationViewController;
    
    vc.student = student;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.students.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"c4qStudent" forIndexPath:indexPath];
    
    C4Q *student = [self.students objectAtIndex:indexPath.row];
    
    cell.textLabel.text = student.name;
    
    return cell;
}

@end


