//
//  SecondTableViewController.m
//  Unit-1-Assessment
//
//  Created by Charles Kang  on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SecondTableViewController.h"
#import "ThirdViewController.h"


@interface SecondTableViewController ()

@property (nonatomic) NSArray *developers;

@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Developers";
    
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"namesIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.developers objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *devName = self.developers[indexPath.row];
    
    ThirdViewController *devDetailVC = segue.destinationViewController;
    
    devDetailVC.studentName = devName;
    
    NSString *imageName = [[self.developers objectAtIndex:indexPath.row] lowercaseString];
    imageName = [imageName stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    devDetailVC.imageName = imageName;
    
    //
    
}

@end
