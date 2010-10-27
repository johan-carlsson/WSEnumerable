//
//  NSArray+Iterators.h
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/25/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import <Foundation/NSArray.h>

@interface NSArray (Iterators)

- (NSArray *)wsEach:(void (^)(id obj))block;
- (NSArray *)wsEachWithIndex:(void (^)(id obj, const UInt32 index))block;

- (NSArray *)wsMap:(id (^)(id obj))block;

- (id)wsDetect:(id (^)(id obj))block;
- (NSArray *)wsSelect:(id (^)(id obj))block;

@end
