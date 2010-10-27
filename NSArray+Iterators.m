//
//  NSArray+Iterators.m
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/25/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import "Runtime.h"
#import "NSArray+Iterators.h"

@implementation NSArray (Iterators)

+ (void)load
{
  alias_method([self class], @selector(wsMap:), @selector(wsCollect:));
}

- (NSArray *)wsEach:(void (^)(id obj))block
{
  for(id item in self) {
    block(item);
  }
  return self;
}

- (NSArray *)wsEachWithIndex:(void (^)(id obj, const UInt32 index))block
{
  UInt32 index = 0;
  for (id item in self) {
    block(item, index);
    index++;
  }
  
  return self;
}

- (NSArray *)wsMap:(id (^)(id obj))block
{
  NSMutableArray *mappedArray = [[[NSMutableArray alloc] initWithCapacity:[self count]] autorelease];
  for (id item in self) {
    [mappedArray addObject:block(item)];
  };
  
  return mappedArray;
}

- (id)wsDetect:(id (^)(id obj))block
{
  for (id item in self) {
    if (block(item))
      return item;
  };
  return nil;
}

- (NSArray *)wsSelect:(id (^)(id obj))block
{
  NSMutableArray *selectedArray = [[[NSMutableArray alloc] init] autorelease];
  for (id item in self) {
    if (block(item))
      [selectedArray addObject:item];
  }
  return selectedArray;
}

@end
