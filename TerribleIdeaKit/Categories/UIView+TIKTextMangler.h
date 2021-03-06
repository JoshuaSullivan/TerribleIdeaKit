//
// UILabel+TIKTextMangler.h
// TerribleIdeaKit
//
// Created by Joshua Sullivan on 4/30/15.
// Copyright (c) 2015 Joshua Sullivan. All rights reserved.


#import <Foundation/Foundation.h>

@interface UIView (TIKTextMangler)

/** Convert all characters in a UILabel to random case. */
- (void)randomCase;

/** Swap 2 random characters in a UILabel. */
- (void)swapCharacters;

/** Text degrades slowly, but continuously. */
- (NSTimer *)creepingChaos;

@end
