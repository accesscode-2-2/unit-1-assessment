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
    NSDictionary *lowGIFoods = [[NSDictionary alloc]init];
    lowGIFoods = @{@"Low GI Foods" : lowGIFoods};
    return lowGIFoods;
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
    NSArray *objects = @[@"Carl", @48, @"YMCA", @8, @YES];
    NSArray *keys = @[@"name", @"age", @"job", @"kids", @"mustache"];
    NSDictionary *carl = [[NSDictionary alloc] initWithObjects:objects forKeys:keys];
    return carl;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] initWithDictionary:originalDictionary copyItems:YES];
    [newDictionary setObject:@"cheetos" forKey:@"food"];
    return newDictionary;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    NSArray *allKeys = [thisIsTheDictionary allKeys];
    return allKeys;
}

@end
