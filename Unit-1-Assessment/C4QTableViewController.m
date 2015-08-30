//
//  C4QTableViewController.m
//  Unit-1-Assessment
//
//  Created by Jackie Meggesto on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QTableViewController.h"
#import "C4QViewController.h"

@interface C4QTableViewController ()

@property (nonatomic) NSArray *devsArray;

@end

@implementation C4QTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.devsArray = [[NSArray alloc]init];
    self.devsArray = @[
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
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.devsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DevCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.devsArray[indexPath.row];
    
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    C4QViewController *devImageView = [self.storyboard instantiateViewControllerWithIdentifier:@"DevImageView"];
    
    NSString* formattedString =[[self.devsArray[indexPath.row] stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString];
    devImageView.formattedString = formattedString;
    devImageView.originalString = self.devsArray[indexPath.row];
    [self.navigationController pushViewController:devImageView animated:YES];
}
@end
