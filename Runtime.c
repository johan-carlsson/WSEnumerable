/*
 *  Runtime.c
 *  WSEnumerable
 *
 *  Created by Eimantas Vaičiūnas on 9/30/10.
 *  Copyright 2010 Walking Smarts. All rights reserved.
 *
 */

#include "Runtime.h"

void alias_method(Class class, SEL srcSelector, SEL dstSelector)
{
  Method srcMethod = class_getInstanceMethod(class, srcSelector);
  IMP srcMethodImplementation = method_getImplementation(srcMethod);
  class_addMethod(class, dstSelector, srcMethodImplementation, method_getTypeEncoding(srcMethod));
}
