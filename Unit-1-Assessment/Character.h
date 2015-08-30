//
//  Character.h
//  Unit-1-Assessment
//
//  Created by Artur Lan on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Character : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *picture;

+ (NSArray *)allStudents;

- (UIImage *)pictureStudent;

@end
