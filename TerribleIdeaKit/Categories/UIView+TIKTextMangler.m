//
// UILabel+TIKTextMangler.m
// TerribleIdeaKit
//
// Created by Joshua Sullivan on 4/30/15.
// Copyright (c) 2015 Joshua Sullivan. All rights reserved.


#import "UIView+TIKTextMangler.h"
#import "UIView+TIKResonanceCascade.h"

@implementation UIView (TIKTextMangler)

- (void)randomCase
{
    if (!([self respondsToSelector:@selector(text)] && [self respondsToSelector:@selector(setText:)])) {
        return;
    }
    NSString *startString = ((UILabel *)self).text;
    NSUInteger length = startString.length;
    NSMutableString *endString = [NSMutableString stringWithCapacity:length];
    for (NSUInteger i = 0; i < length; i++) {
        NSString *currentChar = [startString substringWithRange:NSMakeRange(i, 1)];
        if (arc4random_uniform(2) == 0) {
            [endString appendString:[currentChar lowercaseString]];
        } else {
            [endString appendString:[currentChar uppercaseString]];
        }
    }
    ((UILabel *)self).text = [NSString stringWithString:endString];
    [self setNeedsLayout];
}

- (void)swapCharacters
{
    if (!([self respondsToSelector:@selector(text)] && [self respondsToSelector:@selector(setText:)])) {
        return;
    }
    NSString *startString = ((UILabel *)self).text;
    NSUInteger length = startString.length;
    if (length < 2) {
        return;
    }
    NSUInteger startIndex = arc4random_uniform(length);
    NSUInteger endIndex;
    do {
        endIndex = arc4random_uniform(length);
    } while (endIndex == startIndex);
    NSRange startRange = NSMakeRange(startIndex, 1);
    NSRange endRange = NSMakeRange(endIndex, 1);
    NSString *startChar = [startString substringWithRange:startRange];
    NSString *endChar = [startString substringWithRange:endRange];
    NSString *endString = [startString stringByReplacingCharactersInRange:startRange withString:endChar];
    endString = [endString stringByReplacingCharactersInRange:endRange withString:startChar];
    ((UILabel *)self).text = endString;
    [self setNeedsLayout];
}

- (NSTimer *)creepingChaos
{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(spreadChaos) userInfo:nil repeats:YES];
    return timer;
}

- (void)spreadChaos
{
    [self createResonanceCascade:@selector(swapCharacters)];
    [self createPartialResonanceCascade:@selector(randomCase) effectChance:5];
}

@end
