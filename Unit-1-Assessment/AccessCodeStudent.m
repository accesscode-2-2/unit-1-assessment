//
//  AccessCodeStudent.m
//  Unit-1-Assessment
//
//  Created by Justine Gartner on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AccessCodeStudent.h"

@implementation AccessCodeStudent

-(NSString *)createImageNameWith: (NSString *)studentName {
    
    NSString *lowercaseName = [studentName stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *imageName = [lowercaseName lowercaseString];
    
    return imageName;
}

@end
