//
//  AccessCodeStudentData.h
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccessCodeStudent.h"

@interface AccessCodeStudentData : NSObject

//@property (nonatomic) AccessCodeStudent *accessCodeStudent;
@property (nonatomic) NSArray *studentNames;
@property (nonatomic) NSArray *students;

-(void)initializeData;

@end
