//
//  TSTViewController.m
//  TSTCurveShadowSample
//
//  Created by Ken Shiota on 2014/02/01.
//  Copyright (c) 2014年 Ken Shiota. All rights reserved.
//

#import "TSTViewController.h"
#import "CALayer+tst_curveshadow.h"

@interface TSTViewController ()

@end

@implementation TSTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.sampleView.layer addCurveShadow];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
