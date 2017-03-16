//
//  CodeUIController.m
//  BZReveal
//
//  Created by 冰仔 on 2017/2/27.
//  Copyright © 2017年 bingzaiJoker. All rights reserved.
//

#import "CodeUIController.h"
#import "BZReveal.h"

@interface CodeUIController ()
@property (weak, nonatomic) IBOutlet UILabel *vv;
@end

@implementation CodeUIController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /**
     _vv is created by xib,also it can change the size by method BZLayoutViewWithViewFrame:SuperView:
     */
    [self BZLayoutIphoneWillChangeWhenTransitionRegular:^{
        
    } Compact:^{
        [_vv BZLayoutViewWithViewFrame:CGRectMake(10, 44, 355, 50) SuperView:self.view Invariable:nil];
    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
