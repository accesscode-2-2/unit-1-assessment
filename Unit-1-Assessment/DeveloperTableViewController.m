//
//  DeveloperTableViewController.m
//  Unit-1-Assessment
//
//  Created by Mesfin Bekele Mekonnen on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DeveloperTableViewController.h"
#import "DevelopersData.h"
#import "DeveloperViewController.h"
#import "Developer.h"

@interface DeveloperTableViewController ()

@property (nonatomic) NSArray *devList;

@end

@implementation DeveloperTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.navigationItem.title = @"Developers";
    DevelopersData *dd = [[DevelopersData alloc]init];
    
    self.devList = dd.devs;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.devList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DeveloperIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = self.devList[indexPath.row];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    NSString *name = self.devList[indexPath.row];
    NSString *imageString = [self.devList[indexPath.row] lowercaseString];
    NSMutableString *mutableString = [NSMutableString stringWithString:imageString];
    
    [mutableString replaceOccurrencesOfString:@" " withString:@"" options:1 range:NSMakeRange(0, [mutableString length])];
    
    UIImage *image = [UIImage imageNamed:mutableString];
    

    Developer *developer = [[Developer alloc]init];
    [developer setName:name];
    [developer setImage:image];
    
    DeveloperViewController *dvc = segue.destinationViewController;
    dvc.developer = developer;
}


@end
