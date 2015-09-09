//
//  Developers.m
//  Unit-1-Assessment
//
//  Created by Xiulan Shi on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Developers.h"

@implementation Developers

-(void)initializeData {
    
    NSArray *developers = @[
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
    
   self.developers = [developers sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    
}

@end
