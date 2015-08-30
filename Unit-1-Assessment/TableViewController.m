//
//  TableViewController.m
//  Unit-1-Assessment
//
//  Created by Felicia Weathers on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TableViewController.h"
#import "NameOfDevs.h"
#import "ViewController.h"
#import "PictureViewController.h"

@interface TableViewController ()

@property (nonatomic)NSMutableArray *developers;

@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.developers = [[NSMutableArray alloc]init];
    
    for (NSString *name in [NameOfDevs allDevs]) {
        NameOfDevs *developer = [[NameOfDevs alloc]init];
        developer.name = name;
        developer.imageURLString = [[name lowercaseString]stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        [self.developers addObject:developer];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NameOfDevs *developer = [self.allDevs objectAtIndex:indexPath.row];
    
    PictureViewController *pVC = segue.destinationViewController;
    
    pVC.developer = developer;
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.developers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DevIdentifier" forIndexPath:indexPath];
    
    NameOfDevs *developer = [self.developers objectAtIndex:indexPath.row];
    
    cell.textLabel.text = developer.name;
    NSLog(@"dev name");
    cell.imageView.image = [developer image];
    
    return cell;
}

@end