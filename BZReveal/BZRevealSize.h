//
//  BZRevealSize.h
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 Type invariable's size type.
 */
typedef NS_OPTIONS(NSUInteger, BZRevealAttribute){
    BZRevealAttributeMask                         = 0xFF,
    BZRevealAttributeSize                         = 1 << 1,
    BZRevealAttributeFont                         = 1 << 2,
    
    //Combo Attributes
    BZRevealAttributeComboSizeFont                = 6,
};
typedef NS_OPTIONS(NSUInteger, BZRevealType){
    BZRevealTypeMask                              = 0xFF,
    BZRevealTypeInvariableTop                     = 1 << 1,
    BZRevealTypeInvariableLeft                    = 1 << 2,
    BZRevealTypeInvariableRight                   = 1 << 3,
    BZRevealTypeInvariableBottom                  = 1 << 4,
    
    //Combo Attributes
    BZRevealTypeInvariableComboTopLeft            = 6,
    BZRevealTypeInvariableComboTopRight           = 10,
    BZRevealTypeInvariableComboTopBottom          = 18,
    BZRevealTypeInvariableComboLeftRight          = 12,
    BZRevealTypeInvariableComboLeftBottom         = 20,
    BZRevealTypeInvariableComboRightBottom        = 24,
    BZRevealTypeInvariableComboTopLeftBottom      = 22,
    BZRevealTypeInvariableComboTopRightBottom     = 26,
    BZRevealTypeInvariableComboTopLeftRight       = 14,
    BZRevealTypeInvariableComboLeftRightBottom    = 28,
    BZRevealTypeInvariableComboTopLeftRightBottom = 30,
};

/**
 Screen model
 */
@interface BZScreen : NSObject
+(BZScreen *)ScreensharedManager;

/**
 ScreenWidth attribute
 If you want use method without SCreenW,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat scWidth;

/**
 ScreenHeight attribute
 If you want use method without ScreenH,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat scHeight;

/**
 InvariableTop Flag
 */
@property(assign,nonatomic) BOOL InvariableTop;

/**
 DefaultTop Flag
 */
@property(assign,nonatomic) BOOL DefaultTop;

/**
 InvariableLeft Flag
 */
@property(assign,nonatomic) BOOL InvariableLeft;

/**
 DefaultLeft Flag
 */
@property(assign,nonatomic) BOOL DefaultLeft;

/**
 InvariableRight Flag
 */
@property(assign,nonatomic) BOOL InvariableRight;

/**
 DefaultRight Flag
 */
@property(assign,nonatomic) BOOL DefaultRight;

/**
 InvariableBottom Flag
 */
@property(assign,nonatomic) BOOL InvariableBottom;

/**
 DefaultBottom Flag
 */
@property(assign,nonatomic) BOOL DefaultBottom;

/**
 InvariableSize Flag
 */
@property(assign,nonatomic) BOOL InvariableSize;

/**
 DefaultSize Flag
 */
@property(assign,nonatomic) BOOL DefaultSize;

/**
 InvariableFont Flag
 */
@property(assign,nonatomic) BOOL InvariableFont;

/**
 DefaultFont Flag
 */
@property(assign,nonatomic) BOOL DefaultFont;
@end

/**
 Size model
 */
@interface BZSize : NSObject
@property(assign,nonatomic) CGFloat height;
@property(assign,nonatomic) CGFloat originalHeight;
@property(assign,nonatomic) CGFloat width;
@property(assign,nonatomic) CGFloat originalWidth;
@property(assign,nonatomic) CGFloat pointX;
@property(assign,nonatomic) CGFloat originalLeft;
@property(assign,nonatomic) CGFloat pointY;
@property(assign,nonatomic) CGFloat originalTop;
@property(assign,nonatomic) CGFloat originalRight;
@property(assign,nonatomic) CGFloat originalBottom;
@property(assign,nonatomic) CGFloat font;
@property(assign,nonatomic) CGFloat originalFont;
@end

@interface BZRevealInvariable : NSObject

/**
 BZRevealAttribute
 */
@property(assign,nonatomic) BZRevealAttribute attr;

/**
 BZRevealType
 */
@property(assign,nonatomic) BZRevealType type;

/**
 set BZRevealAttribute and BZRevealType

 @param attr BZRevealAttribute
 @param type BZRevealType
 */
-(void)BZRevealInvariableSetAttr:(BZRevealAttribute)attr Type:(BZRevealType) type;
@end

@interface BZRevealSize : UIView

/**
 Analyze the correct Frame to the screen
 
 @param sw Screen weight of the aimed screen;
 @param sh Screen height of the aimed screen;
 @param fr Frame of the view
 
 @return Analyzed data
 */
+(BZSize *)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr;

/**
 Analyze the correct Frame to the screen
 
 @param sw Screen weight of the aimed screen;
 @param sh Screen height of the aimed screen;
 @param fr Frame of the view
 @param font font size
 
 @return Analyzed data
 */
+(BZSize *)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr
                                   font:(CGFloat)font;

/**
 If view already had the constraints. At first, we should clear them
 
 @param vw View we aimed at
 */
+(void)constraintsClear:(UIView *)vw;


/**
 The method which judged ScreenSize has been decided or not
 
 @return Yes or No
 */
+(BOOL)hadSetScreenSize:(BZScreen *)sc;


/**
 Invariable type Analyze
 
 @param type Invariable type
 @param attr Invariable attr
 */
+(void)BZtypeAnalyzeType:(BZRevealInvariable * _Nullable )type attributes:(BZRevealInvariable * _Nullable )attr;
@end
