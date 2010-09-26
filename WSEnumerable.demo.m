/*
 *  WSEnumerable.demo.c
 *  WSEnumerable
 *
 *  Created by Eimantas Vaičiūnas on 9/26/10.
 *  Copyright 2010 Walking Smarts. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import "WSEnumerable.h"

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  NSArray *array = [NSArray arrayWithObjects:@"Melissa", @"Kasandra", @"Bermudo", @"Asha", @"Lukoh", nil];
  NSLog(@"Test array: %@", array);
  
  // [array each:^block];
  {
    NSLog(@"[array each:^block]");
    NSArray *eachArray = [array each:(id)^(NSString *name) {
      NSLog(@"%@", name);
    }];
    NSLog(@"returned value: %@", eachArray);
  }
  
  // [array eachWithIndex:^block];
  {
    NSLog(@"[array eachWithIndex:^block]");
    NSArray *eachWithIndexArray = [array eachWithIndex:(id)^(NSString *name, UInt32 index) {
      NSLog(@"%d) %@", index, name);
    }];
    NSLog(@"returned value: %@", eachWithIndexArray);
  }
  
  [pool drain];
  return 0;
}