//
//  MyTableViewController.m
//  Unit-1-Assessment
//
//  Created by Umar on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

//@property (weak, nonatomic) NSString *result;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.students = @[@"Lauren Caponong",
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return self.students.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"students" forIndexPath:indexPath];
    
//    NSMutableString * result = [[NSMutableString alloc] init];
//    for (NSObject * obj in self.students)
//    {
//        [result appendString:[obj description]];
//    }
    
    NSArray *students = @[@"Lauren Caponong",
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
    
    cell.textLabel.text = (NSString *) students[indexPath.row];
    
    return cell;
}

- (void)passDataForward
{
    
    DetailViewController *secondViewController = [[DetailViewController alloc] init];
    secondViewController.data = ; // Set the exposed property
    [self.navigationController pushViewController:secondViewController animated:YES];
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
