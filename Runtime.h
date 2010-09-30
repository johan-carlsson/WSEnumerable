/*
 *  Runtime.h
 *  WSEnumerable
 *
 *  Created by Eimantas Vaičiūnas on 9/30/10.
 *  Copyright 2010 Walking Smarts. All rights reserved.
 *
 */

#import <objc/runtime.h>

void alias_method(Class class, SEL srcSelector, SEL dstSelector);