//
//  UIView+TIKSpinterface.m
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 2/4/14.
//  Copyright (c) 2014 Joshua Sullivan. All rights reserved.
//

#import "UIView+TIKSpinterface.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (TIKSpinterface)

- (void)spinterfaceOfType:(TIKSpinterfaceType)type
{
    UIInterpolatingMotionEffect *effect = [UIView createSpinEffectWithTransform:self.layer.transform
                                                                           type:type];
    [self addMotionEffect:effect];
}

- (void) spinpocalypseOfType:(TIKSpinterfaceType)type
{
    [self spinterfaceOfType:type];
    
    for (UIView *view in self.subviews) {
        [view spinpocalypseOfType:type];
    }
}

+ (UIInterpolatingMotionEffect *)createSpinEffectWithTransform:(CATransform3D)transform type:(TIKSpinterfaceType)type
{
    UIInterpolatingMotionEffect *spinEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"layer.transform" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    CGFloat x = 0.0f;
    CGFloat y = 0.0f;
    CGFloat z = 0.0f;
    switch (type) {
        case TIKSpinterfaceTypeXAxis:
            x = 1.0f;
            break;
        case TIKSpinterfaceTypeYAxis:
            y = 1.0f;
            break;
        case TIKSpinterfaceTypeZAxis:
            z = 1.0f;
            break;
        case TIKSpinterfaceTypeRandomMajorAxis:
        {
            NSUInteger axis = arc4random() % 3;
            if (axis == 0) {
                x = 1.0f;
            } else if (axis == 1) {
                y = 1.0f;
            } else {
                z = 1.0f;
            }
            break;
        }
        case TIKSpinterfaceTypeRandomAxis:
        {
            double theta = drand48() * M_PI * 2.0;
            double phi = drand48() * M_PI;
            x = cos(theta) * sin(phi);
            y = sin(theta) * sin(phi);
            z = cos(phi);
            break;
        }
        default:
            y = 1.0f;
            break;
    }
    
    spinEffect.minimumRelativeValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI_2, x, y, z)];
    spinEffect.maximumRelativeValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(-M_PI_2, x, y, z)];
    return spinEffect;
}

@end
