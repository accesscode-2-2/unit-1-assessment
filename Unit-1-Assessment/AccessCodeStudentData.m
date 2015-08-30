//
//  AccessCodeStudentData.m
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AccessCodeStudentData.h"

@implementation AccessCodeStudentData

-(void)initializeData{

    NSArray *names = @[
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
    
    self.studentNames = [names sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSMutableArray *ACstudents = [NSMutableArray new];
    
    for (int i = 0; i < self.studentNames.count; i++) {
        
        AccessCodeStudent *student = [[AccessCodeStudent alloc] init];
    
        student.name = self.studentNames[i];
        
        NSString *studentPhotoName = [student createImageNameWith: self.studentNames[i]];
        
        student.image = studentPhotoName;
        
        [ACstudents addObject:student];
    }
    
    self.students = ACstudents;

    
}




@end
