//
//  NSMissingSymbols.m
//  UglySnowLing
//
//  Created by René J.V. Bertin on 20160921.
//  Copyright 2016 RJVB. All rights reserved.
//

#import "NSMissingSymbols.h"


const NSNotificationName NSPreferredScrollerStyleDidChangeNotification;

const void* returnAddressOfMissingSymbols(int i)
{
	void *retval;
	switch(i){
		case 0:
			retval = (void*) &NSPreferredScrollerStyleDidChangeNotification;
			break;
		default:
			retval = NULL;
			break;
	}
	return retval;
}
