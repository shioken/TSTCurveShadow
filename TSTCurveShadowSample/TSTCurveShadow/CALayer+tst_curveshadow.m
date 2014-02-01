//
//  CALayer+tst_curveshadow.m
//  TSTCurveShadowSample
//
//  Created by Ken Shiota on 2014/02/01.
//  Copyright (c) 2014年 Ken Shiota. All rights reserved.
//

#import "CALayer+tst_curveshadow.h"

@implementation CALayer (tst_curveshadow)
- (void)addCurveShadow {
    CALayer* shadowLayer = [CALayer layer];
    shadowLayer.frame = self.bounds;
    
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = CGRectGetHeight(self.frame);
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointZero];
    [bezierPath addLineToPoint:CGPointMake(0, height + 4)];
    [bezierPath addCurveToPoint:CGPointMake(width, height + 4) controlPoint1:CGPointMake(width / 2, height) controlPoint2:CGPointMake(width / 2, height)];
    [bezierPath addLineToPoint:CGPointMake(width, 0)];
    [bezierPath closePath];
    
    self.shadowPath = bezierPath.CGPath;
    self.shadowColor = [UIColor blackColor].CGColor;
    self.shadowOffset = CGSizeMake(0, 1);
    self.shadowRadius = 1;
    self.shadowOpacity = 0.5;
    
    self.masksToBounds = NO;
    
    [self addSublayer:shadowLayer];
}

@end
