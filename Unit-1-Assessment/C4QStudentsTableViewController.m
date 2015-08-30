//
//  C4QStudentsTableViewController.m
//  Unit-1-Assessment
//
//  Created by Jamaal Sedayao on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QStudentsTableViewController.h"
#import "DetailStudentViewController.h"

@interface C4QStudentsTableViewController ()

@end

@implementation C4QStudentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.students = @{@"Lauren Caponong":@"laurencaponong",
                      @"Artur Lan":@"arturlan",
                      @"Mesfin Bekele Mekonnen":@"mesfinbekelemekonnen",
                      @"Jovanny Espinal":@"jovannyespinal",
                      @"Natalia Estrella":@"nataliaestrella",
                      @"Justine Gartner":@"justinegartner",
                      @"Kaisha Jones":@"kaishajones",
                      @"Shena Yoshida":@"shenayoshida",
                      @"Krishna Picart":@"krishnapicart",
                      @"Umar Mahmud":@"umarmahmud",
                      @"Kaira Villanueva":@"kairavillanueva",
                      @"Christella Dolmo":@"christelladolmo",
                      @"Christian Maldonado":@"christianmaldonado",
                      @"Elber Carneiro":@"elbercarneiro",
                      @"Daniel Distant":@"danieldistant",
                      @"Eric Sanchez":@"ericsanchez",
                      @"Bereket Ghebremedhin":@"bereketghebremedhin",
                      @"Ayuna Vogel":@"ayunavogel",
                      @"Derek Netto":@"dereknetto",
                      @"Brian Blanco":@"brianblanco",
                      @"Charles H Kang":@"charleshkang",
                      @"Diana Elezaj":@"dianaelezaj",
                      @"Chris David":@"chrisdavid",
                      @"Felicia Weathers":@"feliciaweathers",
                      @"Eric Sze":@"ericsze",
                      @"Henna Ahmed":@"hennaahmed",
                      @"Jackie Meggesto":@"jackiemeggesto",
                      @"Jamaal Sedayao":@"jamaalsedayao",
                      @"Jason Wang":@"jasonwang",
                      @"Varindra Hart":@"varindrahart",
                      @"Xiulan Shi":@"xiulanshi",
                      @"Zoufishan Mehdi":@"zoufishanmehdi"
                      };
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.students.allKeys.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"C4QStudentsIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.students.allKeys objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // determine the section and row for our selected cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    
    // access the destinationViewController
    DetailStudentViewController *dvc = segue.destinationViewController;
    
    dvc.name = [self.students.allKeys objectAtIndex:indexPath.row];
    
    NSString *thiskey = [self.students.allKeys objectAtIndex:indexPath.row];
    //NSString *image = [self.students.allKeys objectAtIndex:[thiskey]valueForKey:thiskey];

    NSString *value = [self.students objectForKey:thiskey];
    
    dvc.name = thiskey;
    dvc.imageString = value;
    
    
    NSLog(@"%@",thiskey);
    NSLog(@"%@", value);
    
    // set the country property on the destinationViewController
    
}
    
    
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
