//
//  DevelopersData.m
//  Unit-1-Assessment
//
//  Created by Mesfin Bekele Mekonnen on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DevelopersData.h"

@implementation DevelopersData

-(instancetype)init{
    
        self.devs = @[
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
    return self;
}

-(NSArray *)listOfDevs{
    NSLog(@"%@",self.devs);
    return self.devs;
}



@end
