//
//  ViewController.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "ViewController.h"
#import "BZReveal.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *vv;
@end

@implementation ViewController

-(void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
                NSLog(@"%f",[UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height);
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    UITraitCollection *newCollection =  self.traitCollection;
//    newCollection.p
//    CGFloat c = 3.527;
//    NSLog(@"%.2f",c);
//    NSLog(@"%.1f",c);
//    NSLog(@"%f   ---  %f",[UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    NSLog(@"%f",[UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height);
//    [BZReveal BZScreenSizeSetWidth:375.0f Height:667.0f];
//    [_vv BZLayoutViewWithViewFrame:CGRectMake(0, 20, 20, 100) SurperView:self.view Invariable:nil];
//    
//    UIView *at = [[UIView alloc]initWithFrame:CGRectMake(50, 0, 200, 50) SurperView:self.view Invariable:nil];
//    [at setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:at];
//    
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 60, 200, 50) SurperView:self.view Invariable:nil];
//    [btn setTitle:@"button" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//    [btn setBackgroundColor:[UIColor yellowColor]];
//    [self.view addSubview:btn];
//    
//    UILabel *vv = [[UILabel alloc]init];
//    vv.text = @"label";
//    [vv setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:vv WithFrame:CGRectMake(50, 120, 200, 50) Invariable:nil];
//    
//    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(50, 180, 200, 50) SurperView:self.view Invariable:nil];
//    [text setText:@"textfield"];
//    [text setTintColor:[UIColor darkGrayColor]];
//    [text setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:text];
//    
//    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(50, 240, 200, 50) SurperView:self.view Invariable:nil];
//    tv.text = @"textview";
//    [tv setBackgroundColor:[UIColor purpleColor]];
//    [self.view addSubview:tv];
    
//    BZRevealInvariable *aa =[[BZRevealInvariable alloc]init];
//    aa.type = BZRevealTypeInvariableComboTopLeft;
//    aa.attr = BZRevealAttributeSize | BZRevealAttributeFont;
//    BZRevealDefalut *md = [[BZRevealDefalut alloc]init];
//    md.DefaultLeft = YES;
////    md.DefaultBottom = YES;
//    md.DefaultRight = YES;
////    md.DefaultTop = YES;
////    md.DefaultFont = YES;
////    md.DefaultSize = YES;
//    [BZReveal BZSetNextCodeDefaultAtrributes:md];
//    UITextView *tp = [[UITextView alloc]initWithFrame:CGRectMake(50, 300, 200, 50) SurperView:self.view Invariable:nil];
//    tp.text = @"textview";
//    [tp setBackgroundColor:[UIColor brownColor]];
//    [self.view addSubview:tp];
//    
//    UITextView *pp = [[UITextView alloc]init];
//    pp.text = @"textview";
//    [pp setBackgroundColor:[UIColor yellowColor]];
//    [self.view addSubview:pp WithFrame:CGRectMake(50, 360, 200, 50) Invariable:nil];
//    
//    UITextView *yy = [[UITextView alloc]init];
//    yy.text = @"textview";
//    [yy setBackgroundColor:[UIColor blueColor]];
//    [yy BZLayoutViewWithViewFrame:CGRectMake(50, 420, 200, 50) SurperView:self.view Invariable:nil];
//    [self.view addSubview:yy];
    [_vv setAlpha:0.0f];
    
//    [BZReveal BZScreenSizeSetWidth:320 Height:568];
    BZRevealDefalut *df = [[BZRevealDefalut alloc]init];
//    df.DefaultRight = YES;
//    df.DefaultSize = YES;
    df.DefaultFont = YES;
//    df.DefaultLeft = YES;
//    df.DefaultTop = YES;
//    df.DefaultBottom = YES;
    [BZReveal TextViewFontSize:10];
    
    UIView *vw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568) SurperView:self.view Invariable:nil];
    [vw setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:vw];
    
    UITextView *v1 = [[UITextView alloc]init];
    v1.text = @"UITextView";
    [v1 setBackgroundColor:[UIColor yellowColor]];
    BZRevealInvariable *md = [[BZRevealInvariable alloc]init];
    md.attr = BZRevealAttributeSize;
    [self.view addSubview:v1 WithFrame:CGRectMake(0, 50, 50, 50) Invariable:nil];
    
    [BZReveal BZSetNextCodeDefaultAtrributes:df];
    UITextView *v2 = [[UITextView alloc]init];
    v2.text = @"UITextView";
    [v2 setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:v2 WithFrame:CGRectMake(135, 50, 50, 50) Invariable:nil];
    
    UITextView *v3 = [[UITextView alloc]init];
    v3.text = @"UITextView";
    [v3 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:v3 WithFrame:CGRectMake(270,50, 50, 50) Invariable:nil];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

-(void)click{
    NSLog(@"点击了 ");
}
@end
