/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2016 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiSiriviewView.h"
#import "TiSiriviewViewProxy.h"

@implementation TiSiriviewView

-(TiSiriviewViewProxy*)waveViewProxy
{
    return (TiSiriviewViewProxy*)[self proxy];
}

-(SCSiriWaveformView*)waveView
{
    if (_waveView == nil) {
        _waveView = [[SCSiriWaveformView alloc] initWithFrame:[self bounds]];
        [self addSubview:_waveView];
    }
    
    return _waveView;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [TiUtils setView:_waveView positionRect:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}

- (void)setNumberOfWaves_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setNumberOfWaves:[TiUtils floatValue:value]];
}

- (void)setWaveColor_:(id)value
{
    [[self waveView] setWaveColor:[[TiUtils colorValue:value] _color]];
}

- (void)setPrimaryWaveLineWidth_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setPrimaryWaveLineWidth:[TiUtils floatValue:value]];
}

- (void)setSecondaryWaveLineWidth_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setSecondaryWaveLineWidth:[TiUtils floatValue:value]];
}

- (void)setIdleAmplitude_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setIdleAmplitude:[TiUtils floatValue:value]];
}

- (void)setFrequency_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setFrequency:[TiUtils floatValue:value]];
}

- (void)setDensity_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setDensity:[TiUtils floatValue:value]];
}

- (void)setPhaseShift_:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    [[self waveView] setPhaseShift:[TiUtils floatValue:value]];
}

@end
