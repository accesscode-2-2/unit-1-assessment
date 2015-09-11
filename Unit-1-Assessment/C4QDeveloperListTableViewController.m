//
//  C4QDeveloperListTableViewController.m
//  Unit-1-Assessment
//
//  Created by Michael Kavouras on 9/10/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QDeveloperListTableViewController.h"
#import "C4QDeveloperDetailViewController.h"

@interface C4QDeveloperListTableViewController ()

@property (nonatomic) NSArray *developersArray;

@end

@implementation C4QDeveloperListTableViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDevelopersArray];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // get the indexPath for the selected row
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    // what we're passing
    NSString *developer = self.developersArray[selectedIndexPath.row];
    
    // where we're passing it
    C4QDeveloperDetailViewController *viewController = segue.destinationViewController;
    
    // pass it!
    viewController.developerName = developer;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.developersArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DeveloperCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = self.developersArray[indexPath.row];
    
    return cell;
}

#pragma mark - Helpers

- (void)setupDevelopersArray {
    self.developersArray = @[
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


@end
