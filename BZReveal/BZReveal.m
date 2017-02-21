//
//  BZReveal.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/10.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "BZReveal.h"

@implementation BZRevealDefalut
@end    
@implementation BZReveal
+(void)TextViewFontSize:(CGFloat)size{
    BZScreen *sc = [BZScreen ScreensharedManager];
    sc.textViewFontSize = size;
}
+(void)BZScreenSizeSetWidth:(CGFloat)wid
                     Height:(CGFloat)hei{
    BZScreen *sc = [BZScreen ScreensharedManager];
    sc.scWidth = wid;
    sc.width = [UIScreen mainScreen].bounds.size.width;
    sc.height = [UIScreen mainScreen].bounds.size.height;
    sc.scHeight = hei;
}

+(void)BZSetNextCodeDefaultAtrributes:(BZRevealDefalut * _Nullable )md{
    BZScreen *sc = [BZScreen ScreensharedManager];
    if (md == nil) {
        sc.DefaultTop = NO;
        sc.DefaultLeft = NO;
        sc.DefaultRight = NO;
        sc.DefaultBottom = NO;
        sc.DefaultSize = NO;
        sc.DefaultFont = NO;
    }else{
        sc.DefaultTop = md.DefaultTop;
        sc.DefaultLeft = md.DefaultLeft;
        sc.DefaultRight = md.DefaultRight;
        sc.DefaultBottom = md.DefaultBottom;
        sc.DefaultSize = md.DefaultSize;
        sc.DefaultFont = md.DefaultFont;
    }
}
@end
