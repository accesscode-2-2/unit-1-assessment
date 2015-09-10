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
//@property (strong, nonatomic) NSDictionary *c4qStudents;
@property (strong, nonatomic) NSArray *images;

@end

@implementation ClassListTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = (@"Class List");
    
    //self.allStudents = [[NSArray alloc] init];
    
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
    
    self.images = @[@"laurencaponong",
                    @"arturlan",
                    @"mesfinbekelemekonnen",
                    @"jovannyespinal",
                    @"nataliaestrella",
                    @"justinegartner",
                    @"kaishajones",
                    @"shenayoshida",
                    @"krishnapicart",
                    @"umarmahmud",
                    @"kairavillanueva",
                    @"christelladolmo",
                    @"christianmaldonado",
                    @"elbercarneiro",
                    @"danieldistant",
                    @"ericsanchez",
                    @"bereketghebremedhin",
                    @"ayunavogel",
                    @"dereknetto",
                    @"brianblanco",
                    @"charleshkang",
                    @"dianaelezaj",
                    @"chrisdavid",
                    @"feliciaweathers",
                    @"ericsze",
                    @"hennaahmed",
                    @"jackiemeggesto",
                    @"jamaalsedayao",
                    @"jasonwang",
                    @"varindrahart",
                    @"xiulanshi",
                    @"zoufishanmehdi"];
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
   // NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    if ([segue.identifier isEqualToString:@"showDetailViewControllerIdentifier"]) { // establish a relationship to the segue identifier name (make sure it is named...)
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        DetailViewController *dvc = segue.destinationViewController;
        
        // set image on view controller
        
        dvc.imageName = [self.images objectAtIndex:indexPath.row];
        
       
        
    }
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
    
    NSString *name = [self.allStudents objectAtIndex:indexPath.row];
    NSString *imageName = [self.images objectAtIndex:indexPath.row];
    cell.textLabel.text = name; // connect names
    cell.imageView.image = [UIImage imageNamed:imageName];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // get the data that we're going to pass
   
    //NSArray *student = self.allStudents[indexPath.row];
    
    // declare where your sending the data
    // if initializing from storyboard, make sure the storyboard id
    // is set in the attributes inspector
   
    //DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    // pass the data over
    // make sure that the destination view controller has
    // a property to hold the data that you're passing
    
    //detailViewController.student = student;
    
    // presents the detail view controller
    
    // [self.navigationController pushViewController:detailViewController animated:YES];
    
    
    
}
@end
