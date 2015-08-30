//
//  C4Q.m
//  Unit-1-Assessment
//
//  Created by Jovanny Espinal on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4Q.h"

@implementation C4Q

- (UIImage *)image{
    return [UIImage imageNamed:self.imageUrlString];
}

+ (NSArray *)allStudents{
    return @[@"Artur Lan",
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
             @"Zoufishan Mehdi"];
        
}
@end
