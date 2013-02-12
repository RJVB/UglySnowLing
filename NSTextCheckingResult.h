/*
 *  NSTextCheckingResult.h
 *  NSRegularExpression
 *
 *  Created by René J.V. Bertin on 20130212.
 *  Copyright 2013 RJVB. All rights reserved.
 *
 */

#import <Foundation/NSTextCheckingResult.h>

@interface NSTextCheckingResult (GNUStep)
+ (NSTextCheckingResult*) regularExpressionCheckingResultWithRanges: (NSRangePointer)ranges
												  count: (NSUInteger)count
										regularExpression: (NSRegularExpression*)regularExpression;
@end
