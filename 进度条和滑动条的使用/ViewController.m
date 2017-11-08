//
//  ViewController.m
//  进度条和滑动条的使用
//
//  Created by zh dk on 2017/8/21.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize _slider=_slider;
@synthesize _progressView=_progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //进度条
    _progressView = [[UIProgressView alloc] init];
    _progressView.frame = CGRectMake(50, 100, 300, 40) ;
    //设置进度条风格颜色值
    _progressView.progressTintColor = [UIColor redColor];
    
    //设置背景颜色
//    _progressView.trackTintColor=[UIColor blueColor];
    //设置进度条的进度值;范围0——1
    _progressView.progress = 0.5;
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview:_progressView];
    
    //滑动条
    _slider = [[UISlider alloc] init];
    _slider.frame =CGRectMake(10, 200, 300, 40);
    //设置滑动条最大值
    _slider.maximumValue = 100;
    //设置滑动条最小值,可以为负值
    _slider.minimumValue = 0;
    //设置滑动条滑块的位置
    _slider.value = 20;
    //左侧滑条背景颜色
    _slider.minimumTrackTintColor=[UIColor blueColor];
    //右侧滑条背景颜色
    _slider.maximumTrackTintColor=[UIColor greenColor];
    
    //设置滑块颜色
    _slider.thumbTintColor=[UIColor orangeColor];
    
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}

-(void) pressSlider{
    _progressView.progress = (_slider.value-_slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
    NSLog(@"value = %f",_slider.value);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
