//
//  NSMissingSymbols.h
//  UglySnowLing
//
//  Created by René J.V. Bertin on 20160921.
//  Copyright 2016 RJVB. All rights reserved.
//


#ifndef _NS_MISSING_SYMBOLS_H

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

typedef NSString *NSNotificationName;
extern const NSNotificationName NSPreferredScrollerStyleDidChangeNotification;

extern const void* returnAddressOfMissingSymbols(int i);

#define _NS_MISSING_SYMBOLS_H
#endif