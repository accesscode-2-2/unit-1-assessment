//
//  ClassmateTableViewController.m
//  Unit-1-Assessment
//
//  Created by Christian Maldonado on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ClassmateTableViewController.h"
#import "DetailViewController.h"

@interface ClassmateTableViewController ()

@property (nonatomic) NSArray *people;

@end

@implementation ClassmateTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // self.people = [[ alloc]init];
    // [self.people intializeData];
    
    self.navigationItem.title = @"Classmates";
    
    
         self.people = @[
                        
                                     @"Artur Lan",
                                     @"Ayuna Vogel",
                                     @"Bereket Ghebremedhin",
                                     @"Brian Blanco",
                                     @"Charles Hkang",
                                     @"Chris David",
                                     @"Christella Dolmo",
                                     @"Christian Maldonado",
                                     @"Daniel DIstant",
                                     @"Derek Netto",
                                     @"Diana Elezaj",
                                     @"Elber Carneiro",
                                     @"Eric Sanchez",
                                     @"Eric Sze",
                                     @"Felicia Weathers",
                                     @"Henna Ahmed",
                                     @"Jackie Meggesto",
                                     @"Jason Wang",
                                     @"Jovanny Espinal",
                                     @"Kaira Villanueva",
                                     @"Kaisha Jones",
                                     @"Krishna Picart",
                                     @"Lauren Caponong",
                                     @"Mesfin Bekelemekonnen",
                                     @"Natalia Estrella",
                                     @"Shena Yoshida",
                                     @"Umar Mahmud",
                                     @"Varindra Hart",
                                     @"Xiulan Shi",
                                     @"Zoufishan Mehdi"
                        ];
    [self.people sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = self.people;
    NSString *key = [keys objectAtIndex:section];
    NSArray *values = self.people;
    
    return values.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ClassMateIdentifier" forIndexPath:indexPath];
    
    NSArray *keys = self.people;
    NSString *key = keys [indexPath.section];
    NSArray *values = self.people;
    NSString *valuesName = values [indexPath.row];
    
    cell.textLabel.text = valuesName;
    cell.imageView.image = [UIImage imageNamed:[valuesName lowercaseString]];

    //NSLog(@"%lu, %@", indexPath.row, valuesName);
    cell.textLabel.text = valuesName;
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    
    NSString *name = [self.people objectAtIndex:indexPath.row];
    DetailViewController *vc = segue.destinationViewController;
    //vc.nameOfProperty = name;
    // set the name property on vc
}

@end
