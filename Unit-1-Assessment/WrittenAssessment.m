//
//  WrittenAssessment.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "WrittenAssessment.h"

@interface WrittenAssessment ()

@property (nonatomic) NSDictionary *Carl;
@property (nonatomic) NSDictionary *Carla;
@property (nonatomic) NSArray *arrayKeys;


@end




@implementation WrittenAssessment

// Create and return an NSDictionary * with at least 1 key value entry

- (NSDictionary *)createAndReturnNSDictionary {
    
    NSDictionary *class = @{
                            @"name" : @"accesscode",
                            @"version" : @"2.2",
                            @"number_of_students" : @(32)
                            
                            };
 
    return @{@"%@": class[@"name"]};
}

// Create and return an NSDictionary * with the following key value entries. Please note that
// it is case sensitive.
//
//   name : Carl (NSString)
//   age  : 48 (NSNumber)
//   job  : YMCA (NSString)
//   kids : 8 (NSNumber)
//   mustache : YES (BOOL)

- (NSDictionary *)createAndReturnCarlDictionary {


    

    
    NSDictionary *Carl = @{
                                                    @"name" : @"Carl",
                                                    @"age" : @48,
                                                    @"job" : @"YMCA",
                                                    @"kids" : @8,
                                                    @"mustache": @YES
                                                    };
    
    return Carl;
    
    
   
}

// In this method you are passed an
// NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    return @{};
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    
//    NSDictionary *yourDictionary;
//    NSArray * yourKeys
    return [thisIsTheDictionary allKeys];
//
//         NSArray *arrayKeys = @[
//                         @"house keys",
//                         @"locker room keys",
//                         @"desk keys",
//                         @"car keys"
//                         ];

    
//      NSDictionary *Carla = @{
//                           @"name" : @"Carla",
//                           @"age" : @54,
//                           @"job" : @"Planet Fitness",
//                           @"kids" : @4,
//                           @"mustache": @YES,
//                           @"fighting" : @"fighting",
//                           @"gym" : @"gym",
//                           @"tan" : @"tan",
//                           @"laundry" : @"laundry"
//                           };
//
//
//    
//        return [Carla allKeys];
}

@end
