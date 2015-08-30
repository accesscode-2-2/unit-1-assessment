//
//  TestTableViewController.m
//  Unit-1-Assessment
//
//  Created by Elber Carneiro on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TestTableViewController.h"
#import "TestDetailViewController.h"

@interface TestTableViewController ()
@property (nonatomic) NSArray *studentNames;
@end

@implementation TestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupStudentNames];
}

- (void)setupStudentNames {
    self.studentNames = @[@"Lauren Caponong",
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

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.studentNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"studentIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"%@", self.studentNames[indexPath.row]];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TestDetailViewController *testDetailVC = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    testDetailVC.studentName = self.studentNames[indexPath.row];
}

@end
