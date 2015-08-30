//
//  DevelopersData.h
//  Unit-1-Assessment
//
//  Created by Mesfin Bekele Mekonnen on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DevelopersData : NSObject


@property (nonatomic) NSArray *devs;

-(instancetype)init;

-(NSArray *)listOfDevs;

@end
