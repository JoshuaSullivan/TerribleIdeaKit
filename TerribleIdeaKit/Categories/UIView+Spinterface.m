//
//  UIView+Spinterface.m
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 2/4/14.
//  Copyright (c) 2014 Joshua Sullivan. All rights reserved.
//

#import "UIView+Spinterface.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (Spinterface)

- (void)spinterface
{
    UIInterpolatingMotionEffect *effect = [UIView createSpinEffectWithTransform:self.layer.transform];
    [self addMotionEffect:effect];
}

+ (UIInterpolatingMotionEffect *)createSpinEffectWithTransform:(CATransform3D)transform
{
    UIInterpolatingMotionEffect *spinEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"layer.transform" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    spinEffect.minimumRelativeValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI_2, 0.0, 1.0, 0.0)];
    spinEffect.maximumRelativeValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(-M_PI_2, 0.0, 1.0, 0.0)];
    return spinEffect;
}

@end
