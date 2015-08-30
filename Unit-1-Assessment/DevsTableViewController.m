//
//  DevsTableViewController.m
//  Unit-1-Assessment
//
//  Created by Christella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DevsTableViewController.h"
#import "DevImageViewController.h"
#import "Developers.h"

@interface DevsTableViewController ()

@property (nonatomic) Developers *model;

@end

@implementation DevsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [super viewDidLoad];
    
    self.model = [[Developers alloc] init];
    [self.model initializeDev];
    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return self.model.Developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DeveloperCellIdentifier" forIndexPath:indexPath];
    
    NSString *developerName = [self objectForIndexPath:indexPath];
    cell.textLabel.text = developerName;
    
    return cell;
}

- (NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
       return self.model.Developers[indexPath.row];
  
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSString *devName = [self objectForIndexPath:indexPath];
    
    DevImageViewController *imageController = segue.destinationViewController;
    imageController.devName = [devName capitalizedString];
    
    
    
}




@end
