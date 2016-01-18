/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2016 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiSiriviewViewProxy.h"
#import "TiUtils.h"
#import "TiSiriviewView.h"

@implementation TiSiriviewViewProxy

-(TiSiriviewView*)siriView
{
    return (TiSiriviewView*)[self view];
}

-(void)updateWithLevel:(id)args
{
    ENSURE_UI_THREAD(updateWithLevel, args);
    ENSURE_ARG_COUNT(args, 1);
    ENSURE_ARRAY(args);
    
    id level = [args objectAtIndex:0];
    ENSURE_TYPE(level, NSNumber);
    [[[self siriView] waveView] updateWithLevel:[TiUtils floatValue:level]];
}

@end
