//
//  ViewController.m
//  LCViewPager
//
//  Created by Awro on 16/3/12.
//  Copyright © 2016年 licong. All rights reserved.
//

#import "ViewController.h"
#import "LCViewPagerView.h"

@interface ViewController ()<LCViewPagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    LCViewPagerView *viewPager = [[LCViewPagerView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    //设置代理方法
    viewPager.delegate = self;
    //设置图片数组
    viewPager.imageAry = @[@"tupian1",@"tupian2",@"tupian3",@"tupian4"];
    
    [self.view addSubview:viewPager];
}


/**
 *  LCViewPagerDelegate 代理方法
 *
 *  @param tag 点击的哪一张图片
 */
- (void)didViewPagerViewClick:(NSInteger)tag
{
    NSLog(@"点击了第%ld张图片(long)",tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
