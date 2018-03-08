//
//  ViewController.m
//  test
//
//  Created by Sumency on 2018/3/8.
//  Copyright © 2018年 com.Qiaodu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIImageView *firstCircle;
@end

@implementation ViewController


#define SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define UIColorFromRGB(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    button.frame = CGRectMake(0, 0, 200, 60);
    button.center = self.view.center;
    
//    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"这是一个按钮哦" forState:UIControlStateNormal];
    
    //    button.backgroundColor = [UIColor lightGrayColor];
    
    ////设置渐变背景颜色
    CAGradientLayer *gradualColorLayer = [CAGradientLayer layer];
    gradualColorLayer.colors = @[(__bridge id)UIColorFromRGB(0x6b84f8).CGColor, (__bridge id)UIColorFromRGB(0x435adf).CGColor];
    gradualColorLayer.locations = @[@0.0, @1.0];
    gradualColorLayer.startPoint = CGPointMake(0, 0);
    gradualColorLayer.endPoint = CGPointMake(1.0, 0);
    gradualColorLayer.frame = button.bounds;
    [button.layer addSublayer:gradualColorLayer];
    button.layer.cornerRadius = 30;
    button.layer.masksToBounds = YES;
    
    UIView *button2 = [[UIView alloc]init];
    [self.view addSubview:button2];
    button2.frame = CGRectMake(0, 0, 196, 56);
    button2.center = self.view.center;
    button2.backgroundColor = [UIColor whiteColor];
    button2.layer.cornerRadius = 28;
    button2.layer.masksToBounds = YES;
    
}

//-(UIImageView *)firstCircle{
//    if (_firstCircle == nil) {
//        self.firstCircle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"circleBackground"]];
//
//        _firstCircle.layer.masksToBounds = YES;
//
//        _firstCircle.alpha = 1.0;
//
//    }
//    return _firstCircle;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
