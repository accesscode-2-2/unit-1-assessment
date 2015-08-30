//
//  CQDevsTableViewController.m
//  Unit-1-Assessment
//
//  Created by Ayuna Vogel on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

// REQUIREMENTS
//  The table view controller should display the name of each student in the class (names are in developers.txt).
//  Extra credit for different sort orders.
//  Tapping on a cell should navigate to a view controller displaying the image that corresponds to the developer tapped (the image names are the same as the developer names, minus spaces and all lower case characters).
//  The developers name should appear at the top of the screen in the navigation bar.

#import "CQDevsTableViewController.h"
#import "CQDevDetailViewController.h"

@interface CQDevsTableViewController ()

@property (nonatomic) NSArray *developers;

@end

@implementation CQDevsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Access Code 2.2";
    
    self.developers = @[
                        @"Lauren Caponong",
                        @"Artur Lan",
                        @"Mesfin Bekele Mekonnen",
                        @"Jovanny Espinal",
                        @"Natalia Estrella",
                        @"Justine Gartner",
                        @"Kaisha Jones",
                        @"Shena Yoshida",
                        @"Krishna Picart",
                        @"Umar Mahmud",
                        @"Kaira Villanueva",
                        @"Christella Dolmo",
                        @"Christian Maldonado",
                        @"Elber Carneiro",
                        @"Daniel Distant",
                        @"Eric Sanchez",
                        @"Bereket Ghebremedhin",
                        @"Ayuna Vogel",
                        @"Derek Netto",
                        @"Brian Blanco",
                        @"Charles H Kang",
                        @"Diana Elezaj",
                        @"Chris David",
                        @"Felicia Weathers",
                        @"Eric Sze",
                        @"Henna Ahmed",
                        @"Jackie Meggesto",
                        @"Jamaal Sedayao",
                        @"Jason Wang",
                        @"Varindra Hart",
                        @"Xiulan Shi",
                        @"Zoufishan Mehdi"
                        ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DevCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.developers objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *devName = self.developers[indexPath.row];
    
    // Get the new view controller using [segue destinationViewController].
    CQDevDetailViewController *devDetailVC = segue.destinationViewController;
    
    // Pass the selected object to the new view controller.
    devDetailVC.devName = devName;
    
    NSString *imageName = [devName lowercaseString];
    imageName = [imageName stringByReplacingOccurrencesOfString:@" " withString:@""];
    devDetailVC.imageName = imageName;
}

@end
