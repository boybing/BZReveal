//
//  UIViewController+BZSizeClass.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/17.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "UIViewController+BZSizeClass.h"
#import <objc/runtime.h>

@implementation UIViewController (BZSizeClass)
@dynamic padr,padc,phonec,phoner;
static char bz_padr = '\0';
static char bz_padc = '\0';
static char bz_phoner = '\0';
static char bz_phonec = '\0';
-(Trans)padr{
    return objc_getAssociatedObject(self, &bz_padr);
}

-(void)setPadr:(Trans)padr{
    objc_setAssociatedObject(self, &bz_padr, padr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(Trans)padc{
    return objc_getAssociatedObject(self, &bz_padc);
}

-(void)setPadc:(Trans)padc{
    objc_setAssociatedObject(self, &bz_padc, padc, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(Trans)phoner{
    return objc_getAssociatedObject(self, &bz_phoner);
}

-(void)setPhoner:(Trans)phoner{
    objc_setAssociatedObject(self, &bz_phoner, phoner, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(Trans)phonec{
    return objc_getAssociatedObject(self, &bz_phonec);
}

-(void)setPhonec:(Trans)phonec{
    objc_setAssociatedObject(self, &bz_phonec, phonec, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    if (size.width/size.height>1.6) {
        if (self.phoner) {
            self.phoner();
        }else{
            NSLog(@"Iphone regular size is not set.");
        }
    }
    
    if (size.width/size.height<1.6 && 1<size.width/size.height) {
        if (self.padr) {
            self.padr();
        }else{
            NSLog(@"Ipad regular size is not set.");
        }
    }
    
    if (size.width/size.height<0.6) {
        if (self.phonec) {
            self.phonec();
        }else{
            NSLog(@"Iphone compact size is not set.");
        }
    }
    
    if (size.width/size.height>0.6 &&1>size.width/size.height){
        if (self.padc) {
            self.padc();
        }else{
           NSLog(@"Ipad compact size is not set.");
        }
    }
}

-(void)BZLayoutIpadWillChangeWhenTransitionRegular:(void (^)(void))padr Compact:(void (^)(void))padc{
    self.padr = padr;
    self.padc = padc;
    if ([UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height<0.6) {
        NSLog(@"This is Iphone's Screen Size method,please use Ipad's");
    }
    
    if ([UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height>0.6 && 1>[UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height){
        self.padc();
    }
    padr = nil;
    padc = nil;
}

-(void)BZLayoutIphoneWillChangeWhenTransitionRegular:(void (^)(void))phoner Compact:(void (^)(void))phonec{
    self.phoner = phoner;
    self.phonec = phonec;
    if ([UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height<0.6) {
        self.phonec();
    }
    
    if ([UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height>0.6){
        NSLog(@"This is Ipad's Screen Size method,please use Iphone's");
    }
    phoner = nil;
    phonec = nil;
}

-(void)viewWillAppear:(BOOL)animated{
    
}
@end
