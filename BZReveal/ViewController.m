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
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_vv setAlpha:0.0f];
    
    
    
    UITextView *txt = [[UITextView alloc]initWithFrame:CGRectMake(30, 20, 200, 30) SurperView:self.view Invariable:nil];
    txt.text = @"TextView";
    [self.view addSubview:txt];
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(30, 60, 200, 30) SurperView:self.view Invariable:nil];
    lab.text = @"Label";
    [self.view addSubview:lab];

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(30, 100, 200, 30) SurperView:self.view Invariable:nil];
    [btn setTitle:@"Buttton" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:btn];
    
    UITableView *table = [[UITableView alloc]init];
    [self BZLayoutIphoneWillChangeWhenTransitionRegular:^{
        [table BZLayoutViewWithViewFrame:CGRectMake(16, 20, 700, 200) SurperView:self.view];
    } Compact:^{
        [table BZLayoutViewWithViewFrame:CGRectMake(16, 20, 288, 200) SurperView:self.view];
    }];
    
    [self.view addSubview:table];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    BZRevealDefalut *df = [[BZRevealDefalut alloc]init];
////    df.DefaultRight = YES;
////    df.DefaultSize = YES;
//    df.DefaultFont = YES;
////    df.DefaultLeft = YES;
////    df.DefaultTop = YES;
////    df.DefaultBottom = YES;
//    [BZReveal TextViewFontSize:10];
//    
//    UIView *vw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568) SurperView:self.view Invariable:nil];
//    [vw setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:vw];
//    
//    UITextView *v1 = [[UITextView alloc]init];
//    v1.text = @"UITextView";
//    [v1 setBackgroundColor:[UIColor yellowColor]];
//    BZRevealInvariable *md = [[BZRevealInvariable alloc]init];
//    md.attr = BZRevealAttributeSize;
//    [self.view addSubview:v1 WithFrame:CGRectMake(0, 50, 50, 50) Invariable:nil];
//    
//    [BZReveal BZSetNextCodeDefaultAtrributes:df];
//    UITextView *v2 = [[UITextView alloc]init];
//    v2.text = @"UITextView";
//    [v2 setBackgroundColor:[UIColor purpleColor]];
//    [self.view addSubview:v2 WithFrame:CGRectMake(135, 50, 50, 50) Invariable:nil];
//    
//    UITextView *v3 = [[UITextView alloc]init];
//    v3.text = @"UITextView";
//    [v3 setBackgroundColor:[UIColor whiteColor]];
//    [self.view addSubview:v3 WithFrame:CGRectMake(270,50, 50, 50) Invariable:nil];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

-(void)click{
    NSLog(@"点击了 ");
}
@end
