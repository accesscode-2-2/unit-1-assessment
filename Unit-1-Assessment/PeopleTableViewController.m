//
//  PeopleTableViewController.m
//  Unit-1-Assessment
//
//  Created by Lauren Caponong on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PeopleTableViewController.h"
#import "PersonDetailViewController.h"
#import "person.h"

@interface PeopleTableViewController ()

@property (nonatomic) NSMutableArray *listOfPeople;

@end




@implementation PeopleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Access Code Class";
    
    self.listOfPeople = [[NSMutableArray alloc] init];

    for (NSString *name in [person allPeople]) {
        person *specificPerson = [[person alloc] init];
        specificPerson.name = name;
        specificPerson.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        [self.listOfPeople addObject:specificPerson];
    }
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    person *specificPerson = [self.listOfPeople objectAtIndex:indexPath.row];

    PersonDetailViewController *vc = segue.destinationViewController;
    
    vc.specificPerson = specificPerson;
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listOfPeople.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonNameCellIdentifier" forIndexPath:indexPath];
    
    person *specificPerson = [self.listOfPeople objectAtIndex:indexPath.row];
    
    cell.textLabel.text = specificPerson.name;
    cell.imageView.image = [specificPerson image];
    
    return cell;
}

//
//
//#pragma mark - UITableViewDelegate
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    person *specificPerson = self.listOfPeople[indexPath.row];
//    
//    PersonDetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PersonDetailController"];
//    
//    detailViewController.specificPerson = specificPerson;
//    
//    [self.navigationController pushViewController:detailViewController animated:YES];
//    
//    
//}

@end