////
////  WrittenAssessment.m
////  Unit-1-Assessment
////
////  Created by 👨🏻 on 8/21/15.
////  Copyright (c) 2015 Mike Kavouras. All rights reserved.
////
//
#import "WrittenAssessment.h"

@implementation WrittenAssessment

 //Create and return an NSDictionary * with at least 1 key value entry

- (NSDictionary *)createAndReturnNSDictionary {
	
	NSDictionary *benders = @{@"Air":@"Aang"};
	
	
	return @{benders:@"Air"};
}
//
//// Create and return an NSDictionary * with the following key value entries. Please note that
//// it is case sensitive.
////
////   name : Carl (NSString)
////   age  : 48 (NSNumber)
////   job  : YMCA (NSString)
////   kids : 8 (NSNumber)
////   mustache : YES (BOOL)
//
- (NSDictionary *)createAndReturnCarlDictionary {
//
//	NSDictionary *carl = @{@"name":@"Carl",
////	@"age":@48,
////	@"job":@"YMCA",
////	@"kids":@8,
////	@"mustache":@YES};
////	NSArray *carl = [NSArray arrayWithObjects:@"Carl", @48, @"YMCA",@8, YES, nil];
////	NSArray *keys = [NSArray arrayWithObjects:@"name", @"age", @"job",@"kids", @"mustache", nil];
////	NSDictionary *carldict = [[NSDictionary alloc] initWithObjects:carl forKeys:keys];
////	
  return @{};
}
//
//// In this method you are passed an NSDictionary * as a parameter. Your job is to return
//// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
//// entry with the following key/value. There are multiple solutions to this problem.
////
////   food : cheetos
//	//parameter
- (NSDictionary *)addEntriesToDictionary:(NSDictionary *)originalDictionary {
//	originalDictionary = [[NSMutableDictionary alloc] init];
//	[originalDictionary setValue:@"cheetos" forKey:@"food"];
//	NSDictionary *dictionaryToMerge = [[NSMutableDictionary alloc] init];
//	dictionaryToMerge
//
//NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
//
//[newDictionary addEntriesFromDictionary:originalDictionary];
//NSDictionary *yummyFood = @{@"food":@"cheetos"};
//	
	return @{};
//    // return {originalDictionary, yummyFood};
}
//
//// Return all of the keys in the dictionary `thisIsTheDictionary`
//
//- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
//    return [thisIsTheDictionary allKeys];
//}

@end
