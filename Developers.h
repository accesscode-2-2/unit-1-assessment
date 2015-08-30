//
//  Developers.h
//  Unit-1-Assessment
//
//  Created by Kaisha Jones on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Developers : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

+ (NSArray *)Developers;



@end
