//
//  UIView+TIKPartyMode.h
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 8/28/13.
//  Copyright (c) 2013 Joshua Sullivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TIKPartyMode)

/**
 *  When invoked, party mode will randomly assign a new background color to the current view and all its child views.
 *  NOTE: The original background color is irrevocably lost.
 */
- (void)partyMode;

/**
 *  Creates an NSTimer object invoking party mode on this object every 0.25 seconds.
 *
 *  @return The NSTimer driving the animation if, for some odd reason, you'd want to stop the party.
 */
- (NSTimer *)discoInferno;

@end
