/*
 *  testNSRegEx.m
 *  UglySnowLing
 *
 *  Created by René J.V. Bertin on 20130212.
 *  Copyright 2013 RJVB. All rights reserved.
 *
 */


#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "UglySnowLing/NSRegularExpression.h"

int main( int argc, char *argv[] )
{ NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  int ret;
	if( NSApplicationLoad() ){
	  NSError *error = nil;
	  NSString *pattern = (argc > 1 && argv[1])? [NSString stringWithUTF8String:argv[1]] : @"^.*$";
	  NSString *string = (argc > 2 && argv[2])? [NSString stringWithUTF8String:argv[2]] : @"Ceci n'est pas un test";
	  NSRegularExpression *regexp = [[NSRegularExpression alloc]
							   initWithPattern:pattern
							   options:NSRegularExpressionCaseInsensitive error:&error];
        if( !regexp ){
            NSLog( @"** Warning: invalid regular expression '%@': %@", pattern, error);
		  ret = 1;
	   }
	   else{
		NSArray* chunks = [regexp matchesInString:string options:0 range:NSMakeRange(0, [string length])];
		   if( chunks ){
			   NSLog( @"regex{'%@'[%@]} = %@", string, pattern, chunks );
		   }
		   ret = 0;
	   }
	}
	else{
		ret = -1;
	}
	[pool drain];
	exit(ret);
}