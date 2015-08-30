//
//  TableViewController.m
//  Unit-1-Assessment
//
//  Created by Daniel Distant on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController2.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
   _devsArray = @[
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"devSegue"]) {
        
        //this is where the data is going
        
        ViewController2 *destViewController = [segue destinationViewController];
        
        //get index path
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        //navBarDevNames are equal to the object in the array
        
        NSString *devName = [_devsArray objectAtIndex:indexPath.row];
        
        // pass dev name to view controller 2
        
        destViewController.devName = devName;
        
        //images
        
        NSString *devImageNames = [[self.devsArray objectAtIndex:indexPath.row] lowercaseString];
        
        devImageNames = [devImageNames stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        destViewController.devImageName = devImageNames;
        
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _devsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"devsCell" forIndexPath:indexPath];
    
    cell.textLabel.text = _devsArray[indexPath.row];
    
    return cell;
}



@end
