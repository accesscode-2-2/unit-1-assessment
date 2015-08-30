//
//  Student.h
//  Unit-1-Assessment
//
//  Created by Jamaal Sedayao on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSString * imageString;

-(void) initializeData;

@end
