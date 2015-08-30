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
        //create an instance of Student with each loop
        AccessCodeStudent *student = [[AccessCodeStudent alloc] init];
        //give them a name according to the names array
        student.name = self.studentNames[i];
        
        //Created a method to connect image file name to string name
        NSString *studentPhotoName = [student createImageNameWith: self.studentNames[i]];
        
        //give it an image by matching the string created above
        student.image = studentPhotoName;
        //add the instance to the new students mutable array
        [ACstudents addObject:student];
    }
    
    self.students = ACstudents;

    
}




@end
