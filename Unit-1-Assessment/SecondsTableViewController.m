//
//  SecondsTableViewController.m
//  Unit-1-Assessment
//
//  Created by Fatima Zenine Villanueva on 8/28/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SecondsTableViewController.h"
#import "ThirdViewController.h"
#import "ACStudents.h"

@interface SecondsTableViewController ()

@property (nonatomic) ACStudents *model;
@end

@implementation SecondsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO];
    
    self.model = [[ACStudents alloc]init];
    [self.model initializeData];
    NSLog(@"%@", self.model.acStudents);

    [self.tableView reloadData];
}
- (void) viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.acStudents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"nameOfStudents" forIndexPath:indexPath];
    
    NSArray *allStudents = self.model.acStudents;
    NSString *nameOfAStudent = allStudents[indexPath.row];
    cell.textLabel.text = nameOfAStudent;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ThirdViewController *resultsVC = segue.destinationViewController;
    
    NSArray *allStudents = self.model.acStudents;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *nameOfAStudent = allStudents[indexPath.row];
    resultsVC.studentName = nameOfAStudent;
}

@end
