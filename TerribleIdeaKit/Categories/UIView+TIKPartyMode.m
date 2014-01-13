//
//  UIView+TIKPartyMode.m
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 8/28/13.
//  Copyright (c) 2013 Joshua Sullivan. All rights reserved.
//

#import "UIView+TIKPartyMode.h"

@implementation UIView (TIKPartyMode)

- (void)partyMode
{
    CGFloat hue = (CGFloat)drand48();
    CGFloat saturation = (CGFloat)drand48() * 0.4f + 0.6f;
    self.backgroundColor = [UIColor colorWithHue:hue saturation:saturation brightness:1.0f alpha:1.0f];
    for (UIView *subView in self.subviews) {
        [subView partyMode];
    }
}

- (NSTimer *)discoInferno
{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.25
                                                      target:self
                                                    selector:@selector(partyMode)
                                                    userInfo:nil
                                                     repeats:YES];
    return timer;
}

@end
