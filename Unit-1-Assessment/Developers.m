//
//  Developers.m
//  Unit-1-Assessment
//
//  Created by Christella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Developers.h"

@implementation Developers

- (void)initializeDev {
    NSArray *accessCoders = @[
                              @"Lauren Caponong",
                              @"Artur Lan",
                              @"Mesfin BekeleMekonnen",
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
                              @"CharlesHKang",
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
    
    self.Developers = [accessCoders sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
}


@end
