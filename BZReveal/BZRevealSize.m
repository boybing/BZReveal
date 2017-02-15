//
//  BZRevealSize.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "BZRevealSize.h"

@implementation BZRevealInvariable
-(void)BZRevealInvariableSetAttr:(BZRevealAttribute)attr Type:(BZRevealType)type{
    _attr = attr;
    _type = type;
}
@end

@implementation BZScreen : NSObject
+(BZScreen *)ScreensharedManager{
    static dispatch_once_t onceToken;
    static BZScreen *sc = nil;
    dispatch_once(&onceToken, ^{
        sc = [[BZScreen alloc]init];
    });
    return sc;
}
@end

@implementation BZSize
@end

@implementation BZRevealSize
+(void)BZtypeAnalyzeType:(BZRevealInvariable * _Nullable)type attributes:(BZRevealInvariable * _Nullable)attr{
    BZScreen *sc = [BZScreen ScreensharedManager];
    if (!type &&!attr) {
        sc.InvariableTop = sc.DefaultTop;
        sc.InvariableLeft = sc.DefaultLeft;
        sc.InvariableRight = sc.DefaultRight;
        sc.InvariableBottom = sc.DefaultBottom;
        sc.InvariableSize = sc.DefaultSize;
        sc.InvariableFont = sc.DefaultFont;
    }else{
        switch (attr.attr & BZRevealAttributeMask) {
            case BZRevealAttributeSize:{
                sc.InvariableSize = YES;
                break;
            }
            case BZRevealAttributeFont:{
                sc.InvariableFont = YES;
                break;
            }
            case BZRevealAttributeComboSizeFont:{
                sc.InvariableSize = YES;
                sc.InvariableFont = YES;
                break;
            }
        }
        switch (type.type & BZRevealTypeMask) {
            case BZRevealTypeInvariableTop:{
                sc.InvariableTop = YES;
                break;
            }
            case BZRevealTypeInvariableLeft:{
                sc.InvariableLeft = YES;
                break;
            }
            case BZRevealTypeInvariableRight:{
                sc.InvariableRight = YES;
                break;
            }
            case BZRevealTypeInvariableBottom:{
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopLeft:{
                sc.InvariableTop = YES;
                sc.InvariableLeft = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopRight:{
                sc.InvariableTop = YES;
                sc.InvariableRight = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopBottom:{
                sc.InvariableTop = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboLeftRight:{
                sc.InvariableLeft = YES;
                sc.InvariableRight = YES;
                break;
            }
            case BZRevealTypeInvariableComboLeftBottom:{
                sc.InvariableLeft = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboRightBottom:{
                sc.InvariableRight = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopLeftBottom:{
                sc.InvariableTop = YES;
                sc.InvariableLeft = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopRightBottom:{
                sc.InvariableTop = YES;
                sc.InvariableRight = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopLeftRight:{
                sc.InvariableTop = YES;
                sc.InvariableLeft = YES;
                sc.InvariableRight = YES;
                break;
            }
            case BZRevealTypeInvariableComboLeftRightBottom:{
                sc.InvariableLeft = YES;
                sc.InvariableRight = YES;
                sc.InvariableBottom = YES;
                break;
            }
            case BZRevealTypeInvariableComboTopLeftRightBottom:{
                sc.InvariableTop = YES;
                sc.InvariableLeft = YES;
                sc.InvariableRight = YES;
                sc.InvariableBottom = YES;
                break;
            }
                
        }
        
    }
}
+(BZSize *)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr
                                   font:(CGFloat)font{
    BZSize *size = [self analyzeRightFrameWithSCreenW:sw ScreenH:sh ViewFrame:fr];
    size.font =font * ([UIScreen mainScreen].bounds.size.width / sw);
    NSLog(@"font:%f",size.font);
    return size;
    
}
+(BZSize *)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr {
    BZScreen *sc = [BZScreen ScreensharedManager];
    BZSize *size = [[BZSize alloc]init];
    size.width = fr.size.width * ([UIScreen mainScreen].bounds.size.width /sw);
    size.originalWidth =  fr.size.width;
    size.height = fr.size.height * ([UIScreen mainScreen].bounds.size.height / sh);
    size.originalHeight = fr.size.height;
    size.pointX = fr.origin.x * ([UIScreen mainScreen].bounds.size.width / sw);
    size.originalLeft = fr.origin.x;
    size.pointY = fr.origin.y * ([UIScreen mainScreen].bounds.size.height / sh);
    size.originalTop = fr.origin.y;
    if (sc.InvariableSize == NO) {
        size.originalRight = [UIScreen mainScreen].bounds.size.width -(sc.scWidth - fr.origin.x -fr.size.width)- size.width;
        size.originalBottom = [UIScreen mainScreen].bounds.size.height - (sc.scHeight - fr.origin.y - fr.size.height) - size.height;
    }else{
        size.originalRight = [UIScreen mainScreen].bounds.size.width -(sc.scWidth - fr.origin.x -fr.size.width) - fr.size.width;
        size.originalBottom = [UIScreen mainScreen].bounds.size.height - (sc.scHeight - fr.origin.y - fr.size.height)- fr.size.height;
    }
    return size;
}

+(void)constraintsClear:(UIView *)vw{
    [vw removeConstraints:vw.constraints];
}

+(BOOL)hadSetScreenSize:(BZScreen *)sc{
    if (!sc.scWidth || !sc.scHeight)return YES;
    else return NO;
}
@end
