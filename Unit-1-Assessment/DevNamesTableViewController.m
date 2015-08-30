//
//  DevNamesTableViewController.m
//  Unit-1-Assessment
//
//  Created by Varindra Hart on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "DevNamesTableViewController.h"
#import "ProfileViewController.h"

@interface DevNamesTableViewController ()
@property (nonatomic) NSArray *devNames;
@property (nonatomic) NSMutableArray *devNames_AlphaFirst;
@property (nonatomic) NSMutableArray *devNames_AlphaLast;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedController;
@property (nonatomic) int mode;
@end

@implementation DevNamesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mode = 0;
    self.navigationItem.title = @"Devs";
    
    self.devNames = @[
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
    self.devNames_AlphaFirst = [[NSMutableArray alloc]initWithArray:[self.devNames sortedArrayUsingSelector:@selector(compare:)]];
    
    self.devNames_AlphaLast = [self sortByLastName];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (IBAction)segmentedControllerPressed:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0) {
        self.mode = 0;
    }
    else{
        self.mode = 1;
    }
    
    [self.tableView reloadData];
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
    
    return [self.devNames_AlphaFirst count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DevNamesCellIdentifier" forIndexPath:indexPath];
    
    if (self.mode == 0) {
        
        
        cell.textLabel.text = self.devNames_AlphaFirst[indexPath.row];
    }
    
    else{
        cell.textLabel.text = self.devNames_AlphaLast[indexPath.row];
    }
    // Configure the cell...
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ProfileViewController * profileVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    
    
    if (self.mode == 0) {
        
        NSString *name = self.devNames_AlphaFirst[indexPath.row];
        
        profileVC.devName = self.devNames_AlphaFirst[indexPath.row];
        
        NSString *name_NoSpaceAndLowerCase = [[name stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString];
        
        UIImage * devImage = [UIImage imageNamed:name_NoSpaceAndLowerCase];
        
        profileVC.devImage = devImage;
    }
    
    else{
        NSString *name = self.devNames_AlphaLast[indexPath.row];
        NSString *correctedName = [self revertName:name];
        profileVC.devName = correctedName;
        
        NSString *name_NoSpaceAndLowerCase = [[correctedName stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString];
        
        UIImage * devImage = [UIImage imageNamed:name_NoSpaceAndLowerCase];
        
        profileVC.devImage = devImage;
    }
    
    [self.navigationController pushViewController:profileVC animated:YES];
}

//Split names into components, move last to the front, Remove last, concatonize all parts back into a string
- (NSMutableArray *)sortByLastName{
    
    NSMutableArray *toBeSorted = [[NSMutableArray alloc] init];
    
    for (NSString *name in self.devNames) {
        NSMutableArray *components = [[NSMutableArray alloc] initWithArray:[name componentsSeparatedByString:@" "] copyItems:YES];
        [components insertObject:components.lastObject atIndex:0];
        [components removeLastObject];
        NSString *devName;
        if (components.count == 2) {
            devName = [NSString stringWithFormat:@"%@, %@",components[0],components[1]];
        }
        else{
            devName = [NSString stringWithFormat:@"%@, %@ %@", components[0],components[1], components[2]];
        }
        [toBeSorted addObject:devName];
    }
    
    NSMutableArray *sortedComplete = [[NSMutableArray alloc] initWithArray:[toBeSorted sortedArrayUsingSelector:@selector(compare:)]];
    
    return sortedComplete;
}


//Revert name back to First Middle Last format
- (NSString *)revertName:(NSString *)name{
    
    NSArray * nameComponents = [name componentsSeparatedByString:@", "];
    NSString *correctedName = [NSString stringWithFormat:@"%@ %@", nameComponents[1],nameComponents[0]];
    
    return correctedName;
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
