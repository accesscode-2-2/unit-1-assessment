//
//  WrittenAssessment.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "WrittenAssessment.h"

@implementation WrittenAssessment

// Create and return an NSDictionary * with at least 1 key value entry

- (NSDictionary *)createAndReturnNSDictionary {
    
    NSDictionary *d = @{
            @"Audi A8" : [NSNumber numberWithInt:2015],
            @"Mercedes Benz G65 AMG" : [NSNumber numberWithInt:2015],
            @"Land Rover Range Rover" : [NSNumber numberWithInt:2016],
    };
    
    
    return @{@"NSDictionary" : d};
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
    NSDictionary *c = @{
            @"name" : @"Carl",
            @"age" : [NSNumber numberWithInteger:48],
            @"job" : @"YMCA",
            @"kids" : [NSNumber numberWithInteger:8],
            @"mustache" : [NSNumber numberWithBool:YES],
    };
    
    return c;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    
//    NSMutableDictionary *originalDictionary = [NSMutableDictionary dictionaryWithDictionary:@{
//                                                                                 @"hungry" : @"always",
//                                                                                 @"tired" : @"never",
//                        }];
//    
//    NSDictionary *originalDictionary = @{
//                                    @"hungry" : @"always",
//                                    @"tired" : @"never",
//    };

//    NSDictionary *originalDictionary  = @{
//                                          @"hello" : @"world",
//                                          };
//    
//    NSDictionary *originalDictionary = @{
//                                         
//                                         };
    
    //    [originalDictionary addEntriesFromDictionary:second];
    
    
    NSMutableDictionary *second = [NSMutableDictionary dictionaryWithDictionary:@{
                             @"food" : @"cheetos"
                             }];



    [second addEntriesFromDictionary:originalDictionary];
    
    return second;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    return [thisIsTheDictionary allKeys];
}

@end
