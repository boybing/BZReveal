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
 @param view  SuperView thar we want to refer to

 @return view
 */
-(instancetype _Nonnull)initWithFrame:(CGRect)frame
        SuperView:( UIView * _Nonnull )view;

/**
 Autolayout at init time and must had the screenSize
 
 @param frame Frame of the view
 @param view  SuperView thar we want to refer to
 @param md Invariable types and attributes
 
 @return view
 */
-(instancetype _Nonnull)initWithFrame:(CGRect)frame
        SuperView:( UIView * _Nonnull )view
        Invariable:( BZRevealInvariable * _Nullable )md;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw SuperView thar we want to refer to
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SuperView:( UIView * _Nonnull )vw;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw SuperView thar we want to refer to
 @param md Invariable types and attributes
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SuperView:( UIView * _Nonnull )vw
                      Invariable:(BZRevealInvariable * _Nullable )md;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 */
-(void)addSubview:(UIView * _Nonnull)svw
        WithFrame:(CGRect)fr;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 @param md Invariable types and attributes
 */
-(void)addSubview:(UIView * _Nonnull)svw
        WithFrame:(CGRect)fr
       Invariable:(BZRevealInvariable * _Nullable )md;

@end
