//
//  NSArray+Iterators.m
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/25/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import "NSArray+Iterators.h"

@implementation NSArray (Iterators)

- (NSArray *)each:(void (^)(id obj))block
{
  for(id item in self) {
    block(item);
  }
  return self;
}

- (NSArray *)eachWithIndex:(void (^)(id obj, const UInt32 index))block
{
  UInt32 index = 0;
  for (id item in self) {
    block(item, index);
    index++;
  }
  
  return self;
}

- (NSArray *)map:(id (^)(id obj))block
{
  NSMutableArray *mappedArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
  for (id item in self) {
    [mappedArray addObject:block(item)];
  };
  
  return [NSArray arrayWithArray:mappedArray];
}

@end
