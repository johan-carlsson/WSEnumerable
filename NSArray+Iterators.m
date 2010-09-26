//
//  NSArray+Iterators.m
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/25/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import "NSArray+Iterators.h"

@implementation NSArray (Iterators)

+ (void)load
{
  NSLog(@"loaded %@", self);
}

- (NSArray *)each:(void (^)(id obj))block
{
  return self;
}

@end
