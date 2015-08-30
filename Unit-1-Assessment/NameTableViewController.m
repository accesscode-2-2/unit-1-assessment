//
//  NameTableViewController.m
//  Unit-1-Assessment
//
//  Created by Eric Sze on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "NameTableViewController.h"
#import "NameDetailViewController.h"
#import "C4QNames.h"

@interface NameTableViewController ()

@property (nonatomic) NSMutableArray *people;

@end

@implementation NameTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.setTitle:self.]
    self.navigationItem.title = @"C4Q";
    
    self.people = [[NSMutableArray alloc] init];
    
    // initialize the data in self.countries
    for (NSString *name in [C4QNames allNames]) {
        C4QNames *names = [[C4QNames alloc] init];
        names.name = name;
        names.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        [self.people addObject:names];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // determine the section and row for our selected cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    // retrieve the country from self.countries that corrosponds to
    // the selected cell
    C4QNames *names = [self.people objectAtIndex:indexPath.row];
    
    // access the destinationViewController
    NameDetailViewController *vc = segue.destinationViewController;
    
    // set the country property on the destinationViewController
    vc.names = names;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCellIdentifier" forIndexPath:indexPath];
    
    C4QNames *names = [self.people objectAtIndex:indexPath.row];
    
    cell.textLabel.text = names.name;
    //cell.imageView.image = [country image];
    
    return cell;
}

@end