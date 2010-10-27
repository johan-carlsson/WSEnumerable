//
//  NSDictionary+Iterators.m
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/30/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import "Runtime.h"
#import "NSDictionary+Iterators.h"


@implementation NSDictionary (Iterators)

+ (void)load
{
  alias_method([self class], @selector(wsEach:), @selector(wsEachPair:));
}

- (NSDictionary *)wsEach:(void (^)(id key, id value))block
{
  for (id key in self) {
    block(key, [self valueForKey:key]);
  };
  
  return self;
}

@end
