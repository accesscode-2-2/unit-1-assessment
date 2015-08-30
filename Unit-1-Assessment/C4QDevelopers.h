//
//  C4QDevelopers.h
//  Unit-1-Assessment
//
//  Created by Brian Blanco on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface C4QDevelopers : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

+ (NSArray *)allDevs;


@end
