//
//  StudentList.h
//  Unit-1-Assessment
//
//  Created by Jason Wang on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StudentList : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageString;

- (UIImage *)image;

+(NSArray *)allStudents;


@end
