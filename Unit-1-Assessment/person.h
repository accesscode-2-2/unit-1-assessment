//
//  person.h
//  Unit-1-Assessment
//
//  Created by Lauren Caponong on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface person : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *) image;

+ (NSArray *) allPeople;

@end
