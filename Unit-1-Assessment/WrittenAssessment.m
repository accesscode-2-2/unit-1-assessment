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
    
    NSDictionary *classroom = [NSDictionary dictionaryWithObjectsAndKeys:@"Teaching Assistant 1",@"Student1",@"Teaching Assistant 2",@"Student2", nil];
    return classroom;
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
    NSDictionary *CarlDictionary = @{
                                     @"name" : @"Carl",
                                     @"age": @(48),
                                     @"job": @"YMCA",
                                     @"kids": @(8),
                                     @"mustache": @YES
                                     };
    return CarlDictionary;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    NSDictionary *dictionaryToMerge = @{@"food" : @"cheetos"};
    NSMutableDictionary *combinedDictionary = [NSMutableDictionary dictionaryWithCapacity:20];
    [combinedDictionary addEntriesFromDictionary:dictionaryToMerge];
    [combinedDictionary addEntriesFromDictionary:originalDictionary];
    return combinedDictionary;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    return [thisIsTheDictionary allKeys];
}

@end
