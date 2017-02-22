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
    
    [BZReveal TextViewFontSize:11];
    UITextView *txt = [[UITextView alloc]initWithFrame:CGRectMake(30, 20, 200, 30) SurperView:self.view Invariable:nil];
    txt.text = @"TextView";
    [self.view addSubview:txt];
    
    BZRevealInvariable *md = [[BZRevealInvariable alloc]init];
    md.type = BZRevealTypeInvariableLeft | BZRevealTypeInvariableTop | BZRevealTypeInvariableRight |BZRevealTypeInvariableBottom ;
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(30, 60, 200, 30) SurperView:self.view Invariable:md];
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
        [table BZLayoutViewWithViewFrame:CGRectMake(16, 150, 288, 200) SurperView:self.view];
    }];
    
    [self.view addSubview:table];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

-(void)click{
    NSLog(@"点击了 ");
}
@end
