//
//  ListTableViewController.m
//  Unit-1-Assessment
//
//  Created by Xiulan Shi on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ListTableViewController.h"
#import "Developers.h"
#import "DetailViewController.h"


@interface ListTableViewController ()

@property (nonatomic) Developers *model;

@end

@implementation ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[Developers alloc] init];
    [self.model initializeData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"developerIdentifier" forIndexPath:indexPath];
    
    NSString *developerName = [self.model.developers objectAtIndex:indexPath.row];
    cell.textLabel.text = developerName;

    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *currentDeveloper = [self.model.developers objectAtIndex:indexPath.row];

    DetailViewController *detailVC = segue.destinationViewController;
    
    detailVC.currentDev = currentDeveloper;

}


@end
