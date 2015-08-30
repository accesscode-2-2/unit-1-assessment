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
    
    NSDictionary *pokemon = @{
                              @"charizard" : @"fire",
                              @"alakazam"  : @"psychic"
                              };
    return pokemon;
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
    
    NSArray *objects = [NSArray arrayWithObjects:@"Carl", @48, @"YMCA", @8, @YES, nil];
    NSArray *keys = [NSArray arrayWithObjects:@"name", @"age", @"job", @"kids", @"mustache", nil];
    
    NSDictionary *person = [[NSDictionary alloc] initWithObjects:objects forKeys:keys];
 
    return person;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    
    NSMutableDictionary *dictionaryToMerge = [[NSMutableDictionary alloc]init]; // create mutable dictionary
    [dictionaryToMerge addEntriesFromDictionary:originalDictionary]; // add original dictionary to new one
    [dictionaryToMerge setObject:@"cheetos" forKey:@"food"]; // add new values/keys to mutable dictionary
    
    return dictionaryToMerge; // print it all!
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    return [thisIsTheDictionary allKeys];
}

@end
