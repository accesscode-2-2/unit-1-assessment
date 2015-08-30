//
//  List.m
//  Unit-1-Assessment
//
//  Created by Chris David on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "List.h"
#import "StudentListTableViewController.h"
#import "StudentDetailViewController.h"

@implementation List

- (UIImage *)image {
    return [UIImage imageNamed:self.imageURLString];
}


+ (NSArray *)allStudents {
    return @[
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

@end
