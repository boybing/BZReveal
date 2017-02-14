//
//  UIView+BZReveal.h
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BZRevealSize.h"

@interface UIView (BZReveal)

/**
 Autolayout at init time and must had the screenSize

 @param frame Frame of the view
 @param view  Surperview thar we want to refer to

 @return view
 */
-(id)initWithFrame:(CGRect)frame
        SurperView:(UIView *)view;

/**
 Autolayout at init time and must had the screenSize
 
 @param frame Frame of the view
 @param view  Surperview thar we want to refer to
 @param md Invariable types and attributes
 
 @return view
 */
-(id)initWithFrame:(CGRect)frame
        SurperView:(UIView *)view
        Invariable:( BZRevealInvariable * _Nullable )md;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw Surperview thar we want to refer to
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SurperView:(UIView *)vw;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw Surperview thar we want to refer to
 @param md Invariable types and attributes
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SurperView:(UIView *)vw
                      Invariable:(BZRevealInvariable * _Nullable )md;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 */
-(void)addSubview:(UIView *)svw
        WithFrame:(CGRect)fr;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 @param md Invariable types and attributes
 */
-(void)addSubview:(UIView *)svw
        WithFrame:(CGRect)fr
       Invariable:(BZRevealInvariable * _Nullable )md;

@end
