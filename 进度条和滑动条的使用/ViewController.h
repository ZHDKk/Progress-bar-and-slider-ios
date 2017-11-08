//
//  ViewController.h
//  进度条和滑动条的使用
//
//  Created by zh dk on 2017/8/21.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条对象
    UIProgressView *_progressView;
    
    //滑动条定义
    UISlider *_slider;
}
//定义属性
@property (retain,nonatomic) UIProgressView *_progressView;

@property (retain,nonatomic) UISlider *_slider;

@end

