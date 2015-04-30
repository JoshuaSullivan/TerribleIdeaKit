//
// UIView+TIKResonanceCascade.m
// TerribleIdeaKit
//
// Created by Joshua Sullivan on 4/30/15.
// Copyright (c) 2015 Joshua Sullivan. All rights reserved.


#import "UIView+TIKResonanceCascade.h"

@implementation UIView (TIKResonanceCascade)

- (void)createResonanceCascade:(SEL)action
{
    if ([self respondsToSelector:action]) {
        [self performSelector:action];
    }
    for (UIView *subView in self.subviews) {
        [subView createResonanceCascade:action];
    }
}

- (void)createPartialResonanceCascade:(SEL)action effectChance:(NSUInteger)zeroToOneHundred
{
    if ([self respondsToSelector:action] && arc4random_uniform(100) < zeroToOneHundred) {
        [self performSelector:action];
    }
    for (UIView *subView in self.subviews) {
        [subView createPartialResonanceCascade:action effectChance:zeroToOneHundred];
    }
}


@end
