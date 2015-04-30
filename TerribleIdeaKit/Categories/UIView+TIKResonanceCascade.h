//
// UIView+TIKResonanceCascade.h
// TerribleIdeaKit
//
// Created by Joshua Sullivan on 4/30/15.
// Copyright (c) 2015 Joshua Sullivan. All rights reserved.


#import <Foundation/Foundation.h>

@interface UIView (TIKResonanceCascade)

/** Spiders the view hierarchy under the receiver, applying the receiver to any object which responds to it. */
- (void)createResonanceCascade:(SEL)action;

/** Same as above, but has a random chance of applying the selector. */
- (void)createPartialResonanceCascade:(SEL)action effectChance:(NSUInteger)zeroToOneHundred;

@end
