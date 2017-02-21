//
//  UIViewController+BZSizeClass.h
//  BZReveal
//
//  Created by 冰仔 on 2017/2/17.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^Trans) ();
@interface UIViewController (BZSizeClass)

/**
 When Pad is Regular
 */
@property (nonatomic, strong)Trans padr;

/**
 When Pad is Compact
 */
@property (nonatomic, strong)Trans padc;

/**
 When Phone is Regular
 */
@property (nonatomic, strong)Trans phoner;

/**
 When Phone is Compact
 */
@property (nonatomic, strong)Trans phonec;

/**
 At the state of Pad Regular or Compact,change the autolayout

 @param padr Regular
 @param padc Compact
 */
-(void)BZLayoutIpadWillChangeWhenTransitionRegular:(void(^)(void))padr Compact:(void(^)(void))padc;

/**
  At the state of phone Regular or Compact,change the autolayout

 @param Iphoner Regular
 @param padc    Compact
 */
-(void)BZLayoutIphoneWillChangeWhenTransitionRegular:(void(^)(void))Iphoner Compact:(void(^)(void))padc;
@end
