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
    NSDictionary* someDictionary = @{   @"ball" : @1};
    
    return someDictionary;
}

// Create and return an NSDictionary * with the following key value entries"
//   name : Carl
//   age  : 48
//   job  : YMCA
//   kids : 8
//   mustache : YES

- (NSDictionary *)createAndReturnCarl {
    
    NSDictionary *carl = @{
        @"name" : @"Carl",
        @"age" : @48,
        @"job" : @"YMCA",
        @"kids" : @8,
        @"mustache" : @YES
    };

    return carl;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value
//   food : cheetos

- (NSDictionary *)mergeDictionaries:(NSDictionary *)dictionaryToMerge {
    
    NSMutableDictionary *combinedDictionaries = [[NSMutableDictionary alloc] init];
    NSDictionary *newDictionary = @{ @"food" : @"cheetos"};
    [combinedDictionaries addEntriesFromDictionary:newDictionary];
    [combinedDictionaries addEntriesFromDictionary:dictionaryToMerge];
    
    NSMutableDictionary *mutableVersion = [NSMutableDictionary dictionaryWithDictionary:dictionaryToMerge];
    [mutableVersion setObject:@"cheetos" forKey:@"food"];
    
    return combinedDictionaries;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    NSArray *allKeys = [thisIsTheDictionary allKeys];
    return allKeys;
}

@end
