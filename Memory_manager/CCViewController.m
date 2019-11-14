//
//  CCViewController.m
//  Memory_manager
//
//  Created by walben on 2019/9/29.
//  Copyright © 2019 LB. All rights reserved.
//

#import "CCViewController.h"
#import "CCMiddler.h"
#import "CCProxy.h"

@interface CCViewController ()
@property (nonatomic ,strong) NSTimer * timer ;
@property (strong, nonatomic) CADisplayLink *link;
@end

@implementation CCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatUI];
    
    //self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(testTime) userInfo:nil repeats:YES];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[CCMiddler initWithMiddler:self] selector:@selector(testTime) userInfo:nil repeats:YES];
    
    //// 保证调用频率和屏幕的刷帧频率一致，60FPS
    self.link = [CADisplayLink displayLinkWithTarget:[CCProxy initWithTarget:self] selector:@selector(testLink)];
    
    [self.link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    //    __weak typeof(self) weakSelf = self;
    //    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
    //        [weakSelf timerTest];
    //    }];
}

-(void)creatUI{
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton * btn = [UIButton new];
    btn.frame = CGRectMake(100, 200, 100, 30);
    btn.titleLabel.textColor = [UIColor redColor];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

-(void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)testTime{
    NSLog(@"%s",__func__);
}

-(void)testLink{
    NSLog(@"%s",__func__);
}

-(void)dealloc
{
    [self.link invalidate];
    [self.timer invalidate];
    NSLog(@"%s",__func__);
}


@end
