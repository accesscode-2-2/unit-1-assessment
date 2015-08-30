//
//  AccessCodeStudent.h
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccessCodeStudent : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *image;

-(NSString *)createImageNameWith: (NSString *)studentName;

@end
