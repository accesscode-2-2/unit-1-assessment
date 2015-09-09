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
    
    NSDictionary *car = @{
                          @"color" : @"white"
                          };
    return car;
}

// Create and return an NSDictionary * with the following key value entries. Please note that
// it is case sensitive.
//
//   name : Carl (NSString)
//   age  : 48 (NSNumber)
//   job  : YMCA (NSString)
//   kids : 8 (NSNumber)
//   mustache : YES (BOOL)
//   food : cheetos

- (NSDictionary *)createAndReturnCarlDictionary {
    NSDictionary *people = @{
                             @"name" : [NSString stringWithFormat:@"Carl"],
                             @"age" : [NSNumber numberWithInt:48],
                             @"job" : [NSString stringWithFormat:@"YMCA"],
                             @"kids" : [NSNumber numberWithInt:8],
                             @"mustache" : [NSNumber numberWithBool:YES]
                             };
    return people;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    
    NSMutableDictionary *newDictionary = [NSMutableDictionary dictionaryWithDictionary:originalDictionary];
    
    [newDictionary setObject:@"cheetos" forKey:@"food"];
    
    return newDictionary;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    NSArray *keys = [thisIsTheDictionary allKeys];

    return keys;
}

@end
