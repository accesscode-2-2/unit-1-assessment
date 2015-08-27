//
//  C4QTableViewController.m
//  Unit-1-Assessment
//
//  Created by Z on 8/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QTableViewController.h"
#import "C4QDeveloperImageViewController.h"
#import "C4Qmodel.h"

@interface C4QTableViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *sortSegmentedControl;

@end

@implementation C4QTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillLayoutSubviews{
    C4Qmodel *model = [[C4Qmodel alloc] init];
    [model setup];
    self.developers = model.developers;
    
    //sort by first name
    if (self.sortSegmentedControl.selectedSegmentIndex == 0){
        self.developers = [self.developers sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    }
    
    if (self.sortSegmentedControl.selectedSegmentIndex == 1){
        
        //sort by last name
        NSMutableDictionary *dictWithLastNameKeysForNameObjects = [[NSMutableDictionary alloc] init];
        
        for (int i=0; i < model.developers.count; i++) {
            NSString *fullName =[model.developers objectAtIndex:i];
            NSString *lastName = [[fullName componentsSeparatedByString:@" "] objectAtIndex:1];
            [dictWithLastNameKeysForNameObjects setObject:fullName forKey:lastName];
        }
        
        NSArray *sortedLastNames = [[dictWithLastNameKeysForNameObjects allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
        NSMutableArray *developersSortedByLastName = [[NSMutableArray alloc] init];
        for (int i = 0; i<sortedLastNames.count; i++) {
            [developersSortedByLastName addObject:[dictWithLastNameKeysForNameObjects objectForKey:[sortedLastNames objectAtIndex:i]]];
        }
        self.developers = [developersSortedByLastName copy];
        
    }
}

- (IBAction)sortOptionSelected:(UISegmentedControl *)sender {
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DeveloperCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.developers objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    C4QDeveloperImageViewController *vc = segue.destinationViewController;
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    vc.developer = [self.developers objectAtIndex:indexPath.row];
}

@end
