//
//  ACStudents.m
//  Unit-1-Assessment
//
//  Created by Fatima Zenine Villanueva on 8/28/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ACStudents.h"

@implementation ACStudents

- (void) initializeData {
    [self allAccessCodeStudents];
}

- (void) allAccessCodeStudents {
    
    NSArray *acStudents = @[
                            
                            @"Artur Lan",
                            @"Ayuna Vogel",
                            @"Bereket Ghebremedhin",
                            @"Brian Blanco",
                            @"Charles H Kang",
                            @"Chris David",
                            @"Christella Dolmo",
                            @"Christian Maldonado",
                            @"Daniel Distant",
                            @"Derek Netto",
                            @"Diana Elezaj",
                            @"Elber Carneiro",
                            @"Eric Sanchez",
                            @"Eric Sze",
                            @"Felicia Weathers",
                            @"Henna Ahmed",
                            @"Jackie Meggesto",
                            @"Jamaal Sedayao",
                            @"Jason Wang",
                            @"Jovanny Espinal",
                            @"Justine Gartner",
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
    
    self.acStudents = acStudents;
}

@end
