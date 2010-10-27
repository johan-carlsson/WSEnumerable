//
//  NSDictionary+Iterators.h
//  WSEnumerable
//
//  Created by Eimantas Vaičiūnas on 9/30/10.
//  Copyright 2010 Walking Smarts. All rights reserved.
//

#import <Foundation/NSDictionary.h>


@interface NSDictionary (Iterators)

- (NSDictionary *)wsEach:(void (^)(id key, id value))block;

@end
