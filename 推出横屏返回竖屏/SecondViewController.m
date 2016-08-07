//
//  SecondViewController.m
//  推出横屏返回竖屏
//
//  Created by LIUYANG on 16/7/15.
//  Copyright © 2016年 LYG. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIDeviceOrientation orientation = [UIDevice currentDevice].orientation;
    
    NSLog(@" -- orientation -= %ld",orientation);
//    if (orientation != 1) {
//        [self supportedInterfaceOrientations];
//    }
    
    NSArray *arr = self.navigationController.viewControllers;
    NSLog(@"---arr = %@", arr);
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(supportedInterfaceOrientations) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}
//
//+(void)attemptRotationToDeviceOrientation{
//    
//    NSLog(@"attemptRotationToDeviceOrientation");
//}
-(BOOL)shouldAutorotate {
    return YES;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
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
