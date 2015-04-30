//
// UIView+TIKResonanceCascade.h
// TerribleIdeaKit
//
// Created by Joshua Sullivan on 4/30/15.
// Copyright (c) 2015 Joshua Sullivan. All rights reserved.


#import <Foundation/Foundation.h>

@interface UIView (TIKResonanceCascade)

- (void)createResonanceCascade:(SEL)action;

- (void)createPartialResonanceCascade:(SEL)action effectChance:(NSUInteger)zeroToOneHundred;

@end
