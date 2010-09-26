//
//  NSArray+Iterators.h
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/25/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

@interface NSArray (Iterators)

- (NSArray *)each:(void (^)(id obj))block;
- (NSArray *)eachWithIndex:(void (^)(id obj, const UInt32 index))block;

- (NSArray *)map:(id (^)(id obj))block;

- (id)detect:(id (^)(id obj))block;
- (NSArray *)select:(id (^)(id obj))block;

@end
