//
//  C4QDevsTableViewController.m
//  Unit-1-Assessment
//
//  Created by Brian Blanco on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QDevsTableViewController.h"
#import "C4QDevProfileViewController.h"


@interface C4QDevsTableViewController ()

@property (nonatomic) NSArray *allDevs;

@end

@implementation C4QDevsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"C4Q";
    
    self.allDevs = @[
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
                     @"Zoufishan Mehdi"];
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *devName = self.allDevs[indexPath.row];
    
    C4QDevProfileViewController *vc = segue.destinationViewController;
    
    vc.devName = devName;
    
    NSString *imageOf = [devName lowercaseString];
    imageOf = [imageOf stringByReplacingOccurrencesOfString:@" " withString:@""];
    vc.imageOf = imageOf;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
        return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.allDevs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"C4QDevs" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [self.allDevs objectAtIndex:indexPath.row];
    
    return cell;
}


@end
