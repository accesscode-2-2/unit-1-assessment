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
    
    NSDictionary *yourDictionary =  @{@"Name":@"DerpFace"};
    return yourDictionary;
}

// Create and return an NSDictionary * with the following key value entries. Please note that
// it is case sensitive.
//
//   name : Carl (NSString)
//   age  : 48 (NSNumber)
//   job  : YMCA (NSString)
//   kids : 8 (NSNumber)
//   mustache : YES (BOOL)

//- (NSDictionary *)createAndReturnCarlDictionary {
//    
//    NSDictionary *carlDictionary = @{@"name":@"Carl",
//                                     @"age":@(48),
//                                     @"job":@"YMCA",
//                                     @"kids":@(8),
//                                     [carlDictionary setValue:[NSNumber numberWithBool:YES] forKey:@"mustache"]};
//    
////    NSMutableDictionary *carlDictionary = @{@{@"name":@"Carl"},
////                                            @{@"age":48},
////                                            @{@"job":@"YMCA"},
////                                            @{@"kids":8};
//////                                            @{@"mustache":[BOOL YES]};
////
//    
//    
////    NSMutableDictionary *carlDictionary = [@{@"name":@"Carl", @"age":@(48), @"job":@"YMCA", @"kids":@(8)}mutableCopy];
////    [carlDictionary setValue:[NSNumber numberWithBool:YES] forKey:@"mustache"];
//
//    return carlDictionary;
//}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value. There are multiple solutions to this problem.
//
//   food : cheetos

- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
    
    NSMutableDictionary *monsterDictionary = [[NSMutableDictionary alloc] initWithDictionary:originalDictionary];
    
    [monsterDictionary setObject:@"cheetos" forKey:@"food"];
    
    return monsterDictionary;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    
    return [thisIsTheDictionary allKeys];
}

@end

