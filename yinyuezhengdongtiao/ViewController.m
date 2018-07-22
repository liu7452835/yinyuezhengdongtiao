//
//  ViewController.m
//  yinyuezhengdongtiao
//
//  Created by 刘天宇 on 2018/7/22.
//  Copyright © 2018年 lty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    CAReplicatorLayer *replicatorLayer = [[CAReplicatorLayer alloc] init];
    replicatorLayer.frame = CGRectMake(0, 100, 375, 400);
    replicatorLayer.instanceCount = 5;
    replicatorLayer.instanceTransform  = CATransform3DMakeTranslation(20, 0, 0);
    replicatorLayer.instanceDelay = 0.2;
    replicatorLayer.masksToBounds = YES;
    replicatorLayer.backgroundColor = [UIColor blackColor].CGColor;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(14, 200, 10, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    [replicatorLayer addSublayer:layer];
    [self.view.layer addSublayer:replicatorLayer];
    
    layer.anchorPoint = CGPointMake(0, 1);
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.duration = 0.5;
    /*  animation.keyPath = @"position.y";
     
     animation.fromValue = @200;
     animation.toValue = @150;
     */
    animation.keyPath = @"transform.scale.y";
    animation.toValue = @0.1;
    
    
    animation.autoreverses = YES;
    animation.repeatCount = MAXFLOAT;
    [layer addAnimation:animation forKey:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
