//
//  UIView+BZReveal.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "UIView+BZReveal.h"

@implementation UIView (BZReveal)
-(void)addSubview:(UIView *)svw
        WithFrame:(CGRect)fr{
    [self addSubview:svw];
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([BZRevealSize hadSetScreenSize:sc]){
        NSLog(@"You must decide ScreenSize at fisrt!'BZScreenSizeSetWidth: Height:' or you can not use this method 'addSubview: WithFrame:'");
        return;
    }
    [svw BZLayoutViewWithViewFrame:fr SurperView:self];
}

-(void)addSubview:(UIView *)svw WithFrame:(CGRect)fr Invariable:( BZRevealInvariable * _Nullable )md{
    [self addSubview:svw];
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([BZRevealSize hadSetScreenSize:sc]){
        NSLog(@"You must decide ScreenSize at fisrt!'BZScreenSizeSetWidth: Height:' or you can not use this method 'addSubview: WithFrame: Invariable:'");
        return;
    }
    [svw BZLayoutViewWithViewFrame:fr SurperView:self Invariable:md];
}

-(void)addSubview:(UIView *)svw
        WithFrame:(CGRect)fr
          SCreenW:(CGFloat)sw
          ScreenH:(CGFloat)sh{
    [self addSubview:svw];
    [svw BZLayoutViewWithSCreenW:sw ScreenH:sh ViewFrame:fr SurperView:self];
}

-(id)initWithFrame:(CGRect)frame
           SCreenW:(CGFloat)sw
           ScreenH:(CGFloat)sh
        SurperView:(UIView *)view{
    
    Class cc = NSClassFromString(NSStringFromClass([self class]));
    id vw = nil;
    vw = [[cc alloc]init];
    [view addSubview:vw];
    if (vw) {
        [vw BZLayoutViewWithSCreenW:sw ScreenH:sh ViewFrame:frame SurperView:view];
    }
    return vw;
}

-(id)initWithFrame:(CGRect)frame
           SCreenW:(CGFloat)sw
           ScreenH:(CGFloat)sh
        SurperView:(UIView *)view
        Invariable:( BZRevealInvariable * _Nullable )md{
    
    Class cc = NSClassFromString(NSStringFromClass([self class]));
    id vw = nil;
    vw = [[cc alloc]init];
    [view addSubview:vw];
    if (vw) {
        [BZRevealSize BZtypeAnalyzeType:md attributes:md];
        [vw BZLayoutViewWithSCreenW:sw ScreenH:sh ViewFrame:frame SurperView:view];
    }
    return vw;
}

-(id)initWithFrame:(CGRect)frame
        SurperView:(UIView *)view{
    
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([BZRevealSize hadSetScreenSize:sc]){
        NSLog(@"You must decide ScreenSize at fisrt!'BZScreenSizeSetWidth: Height:' or you can not use this method 'initWithFrame: SurperView:'");
        return nil;
    }
    
    return [self initWithFrame:frame SCreenW:sc.scWidth ScreenH:sc.scHeight SurperView:view];
}

-(id)initWithFrame:(CGRect)frame SurperView:(UIView *)view Invariable:( BZRevealInvariable * _Nullable )md{
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([BZRevealSize hadSetScreenSize:sc]){
        NSLog(@"You must decide ScreenSize at fisrt!'BZScreenSizeSetWidth: Height:' or you can not use this method 'initWithFrame: SurperView:'");
        return nil;
    }
    return [self initWithFrame:frame SCreenW:sc.scWidth ScreenH:sc.scHeight SurperView:view Invariable:md];
}

-(void)BZLayoutViewWithSCreenW:(CGFloat)sw
                       ScreenH:(CGFloat)sh
                     ViewFrame:(CGRect)fr
                    SurperView:(UIView *)vw{
    
    if (self.translatesAutoresizingMaskIntoConstraints)self.translatesAutoresizingMaskIntoConstraints = NO;
    if (self.constraints.count>0)[BZRevealSize constraintsClear:self];
    BZSize *size = nil;
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([self respondsToSelector:@selector(font)]){
        id tempSelf = self;
        UILabel *sf = (UILabel *)tempSelf;
        CGFloat fontSize = sf.font.pointSize;
        if ([self isKindOfClass:[UITextView class]])
        {
            if (sc.scWidth/sc.scHeight == 375/667){
                fontSize = 17.0f;
            }else{
                fontSize = 30.2f * sc.scWidth / sc.scHeight;
            }
        }
        size = [BZRevealSize analyzeRightFrameWithSCreenW:sw ScreenH:sh ViewFrame:fr font:fontSize];
        if (sc.InvariableFont == NO)[self fontSizeSetByScreenSize:size];
        sc.InvariableFont = NO;
    }else{
        size = [BZRevealSize analyzeRightFrameWithSCreenW:sw ScreenH:sh ViewFrame:fr];
    }
    [vw addSubview:self];
    int comboone = 0;
    int combotwo = 0;
    if ((sc.InvariableTop && sc.InvariableBottom) || (sc.InvariableLeft && sc.InvariableRight) ||(sc.InvariableTop && sc.InvariableLeft && sc.InvariableRight && sc.InvariableBottom)) {
        if (sc.InvariableTop && sc.InvariableLeft && sc.InvariableRight && sc.InvariableBottom) {
            [BZRevealSize constraintsClear:self];
            [vw addConstraint:[NSLayoutConstraint   constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:[UIScreen mainScreen].bounds.size.width - sc.scWidth + size.originalWidth]];
            
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:[UIScreen mainScreen].bounds.size.height - sc.scHeight + size.originalHeight]];
            comboone = 1;
            combotwo = 1;
        }else{
            if (sc.InvariableTop && sc.InvariableBottom) {
                [BZRevealSize constraintsClear:self];
                [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.width]];
                
                [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:[UIScreen mainScreen].bounds.size.height - sc.scHeight + size.originalHeight]];
                comboone = 1;
            }
            if (sc.InvariableLeft && sc.InvariableRight) {
                [BZRevealSize constraintsClear:self];
                [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:[UIScreen mainScreen].bounds.size.width - sc.scWidth + size.originalWidth]];
                
                [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.height]];
                combotwo = 1;
            }
        }
        if (sc.InvariableSize == YES){
            NSLog(@"At the state of combo Invariable attribute is working,InvariableSize do not work!");
            sc.InvariableSize = NO;
        }
    }else{
        if (sc.InvariableSize == YES) {
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.originalWidth]];
            
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.originalHeight]];
            
            sc.InvariableSize = NO;
        }else{
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.width]];
            
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:size.height]];
        }
    }
    
    if (sc.InvariableRight == YES && combotwo == 0) {
        [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeLeft multiplier:1.0 constant:size.originalRight]];
        
        sc.InvariableRight = NO;
    }else{
        if (sc.InvariableLeft == YES) {
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeLeft multiplier:1.0 constant:size.originalLeft]];
            
            sc.InvariableLeft = NO;
        }else{
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeLeft multiplier:1.0 constant:size.pointX]];
        }
        combotwo = 0;
    }
    
    if (sc.InvariableBottom == YES && comboone == 0) {
        [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeTop multiplier:1.0 constant:size.originalBottom]];
        
        sc.InvariableBottom = NO;
    }else{
        if (sc.InvariableTop == YES) {
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeTop multiplier:1.0 constant:size.originalTop]];
            
            sc.InvariableTop = NO;
        }else{
            [vw addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:vw attribute:NSLayoutAttributeTop multiplier:1.0 constant:size.pointY]];
        }
        comboone = 0;
    }
    
    [self layoutIfNeeded];
    
}

-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SurperView:(UIView *)vw{
    BZScreen *sc = [BZScreen ScreensharedManager];
    if ([BZRevealSize hadSetScreenSize:sc]){
        NSLog(@"You must decide ScreenSize at fisrt! 'BZScreenSizeSetWidth: Height:' or you can not use this method 'BZLayoutViewWithViewFrame: SurperView:'");
        return;
    }
    [self BZLayoutViewWithSCreenW:sc.scWidth ScreenH:sc.scHeight ViewFrame:fr SurperView:vw];
}

-(void)BZLayoutViewWithViewFrame:(CGRect)fr SurperView:(UIView *)vw Invariable:(BZRevealInvariable *)md{
    [BZRevealSize BZtypeAnalyzeType:md attributes:md];
    [self BZLayoutViewWithViewFrame:fr SurperView:vw];
}

-(void)fontSizeSetByScreenSize:(BZSize *)sc{
    if ([self isKindOfClass:[UIButton class]]) {
        UIButton *sf = (UIButton *)self;
        sf.titleLabel.font = [UIFont systemFontOfSize:sc.font];
    }
    if ([self isKindOfClass:[UITextField class]]) {
        UITextField *sf = (UITextField *)self;
        sf.font = [UIFont systemFontOfSize:sc.font];
    }
    if([self isKindOfClass:[UITextView class]]){
        UITextView *sf = (UITextView *)self;
        sf.font = [UIFont systemFontOfSize:sc.font];
    }
    if ([self isKindOfClass:[UILabel class]]) {
        UILabel *sf = (UILabel *)self;
        sf.font = [UIFont systemFontOfSize:sc.font];
    }
}
@end
