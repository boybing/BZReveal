//
//  ViewController.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/8.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "ViewController.h"
#import "BZReveal.h"
#import "CodeUIController.h"

@interface ViewController ()
@end
@implementation ViewController
- (IBAction)codeUI:(id)sender {
    CodeUIController *vc = [[CodeUIController alloc]init];
    [self presentViewController:vc animated:YES completion:^{}];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
@end
