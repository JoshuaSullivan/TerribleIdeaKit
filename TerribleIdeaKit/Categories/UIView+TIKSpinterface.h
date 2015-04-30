//
//  UIView+TIKSpinterface.h
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 2/4/14.
//  Copyright (c) 2014 Joshua Sullivan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TIKSpinterfaceType) {
    TIKSpinterfaceTypeXAxis,
    TIKSpinterfaceTypeYAxis,
    TIKSpinterfaceTypeZAxis,
    TIKSpinterfaceTypeRandomMajorAxis,
    TIKSpinterfaceTypeRandomAxis
};

@interface UIView (TIKSpinterface)

- (void)spinterfaceOfType:(TIKSpinterfaceType)type;

- (void)spinpocalypseOfType:(TIKSpinterfaceType)type;

@end
