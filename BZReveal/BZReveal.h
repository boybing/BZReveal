//
//  BZReveal.h
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//
#import <Foundation/Foundation.h>

#if __has_include(<BZReveal/BZReveal.h>)
#import <BZReveal/UIView+BZReveal.h>
#import <BZReveal/UIViewController+BZSizeClass.h>
#else
#import "UIView+BZReveal.h"
#import "UIViewController+BZSizeClass.h"
#endif
#define SCW [BZScreen ScreensharedManager].scWidth
#define SCH [BZScreen ScreensharedManager].scHeight
#define SW [UIScreen mainScreen].bounds.size.width
#define SH [UIScreen mainScreen].bounds.size.height
@interface BZRevealDefalut : NSObject
/**
 DefaultTop Flag
 */
@property(assign,nonatomic) BOOL DefaultTop;
/**
 DefaultLeft Flag
 */
@property(assign,nonatomic) BOOL DefaultLeft;
/**
 DefaultRight Flag
 */
@property(assign,nonatomic) BOOL DefaultRight;
/**
 DefaultBottom Flag
 */
@property(assign,nonatomic) BOOL DefaultBottom;
/**
 DefaultSize Flag
 */
@property(assign,nonatomic) BOOL DefaultSize;
/**
 DefaultFont Flag
 */
@property(assign,nonatomic) BOOL DefaultFont;
@end
@interface BZReveal : NSObject

/**
 If you decide the width and height of the view , 
 you may not have to add width height every time.

 @param wid Screen width
 @param hei Screen height
 */
+(void)BZScreenSizeSetWidth:(CGFloat)wid
                     Height:(CGFloat)hei;


/**
 If you want the next view will have custom invariable atrributes,
 you may use this method.

 @param md  you can add defalut type
 */
+(void)BZSetNextCodeDefaultAtrributes:(BZRevealDefalut * _Nullable )md;


/**
 If you want to use textview auto size you have to set it.
 */
+(void)TextViewFontSize:(CGFloat)size;
@end
