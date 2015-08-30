//
//  ClassListTableViewController.m
//  Unit-1-Assessment
//
//  Created by Shena Yoshida on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ClassListTableViewController.h"
#import "DetailViewController.h"

@interface ClassListTableViewController ()

@property (strong, nonatomic) NSArray *allStudents;

@end

@implementation ClassListTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.allStudents = [[NSArray alloc] init];
    
      self.allStudents = @[
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
    
    NSLog(@"%@", self.allStudents); // test it!
    
    self.title = (@"Class List");
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

   // NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.allStudents count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"classListIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.allStudents objectAtIndex:indexPath.row]; // connect names
    
    NSString *name = [self.allStudents objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[name lowercaseString]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // get the data that we're going to pass
    NSArray *student = self.allStudents[indexPath.row];
    
    // declare where your sending the data
    // if initializing from storyboard, make sure the storyboard id
    // is set in the attributes inspector
    DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    // pass the data over
    // make sure that the destination view controller has
    // a property to hold the data that you're passing
    detailViewController.student = student;
    
    // presents the detail view controller
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
    
}
@end
