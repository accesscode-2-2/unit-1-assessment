//
//  C4Q.h
//  Unit-1-Assessment
//
//  Created by Jovanny Espinal on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface C4Q : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageUrlString;

- (UIImage *)image;
+ (NSArray *)allStudents;

@end
