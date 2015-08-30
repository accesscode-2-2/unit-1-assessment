//
//  C4QNames.h
//  Unit-1-Assessment
//
//  Created by Eric Sze on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface C4QNames : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

+ (NSArray *)allNames;

@end