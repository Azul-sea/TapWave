//
//  ViewController.m
//  点击水纹
//
//  Created by 四季游玩 on 2016/11/23.
//  Copyright © 2016年 四季游玩. All rights reserved.
//

#import "ViewController.h"
#import "TapWaveView.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIImageView *pannelView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    _pannelView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetWidth(self.view.frame))];
    _pannelView.image = [UIImage imageNamed:@"DFEDF8977DBC6A7829F54D54446BCF67.jpg"];
    _pannelView.userInteractionEnabled = YES;
    _pannelView.clipsToBounds = YES;
    [self.view addSubview:_pannelView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [tapGesture setNumberOfTouchesRequired:1];
    tapGesture.numberOfTapsRequired = 1;
    tapGesture.delegate = self;
//    tapGesture.cancelsTouchesInView = NO;
    [_pannelView addGestureRecognizer:tapGesture];
}

- (void)onTap:(UITapGestureRecognizer*)sender
{
    CGPoint center = [sender locationInView:sender.view];
    [TapWaveView showInView:_pannelView center:center];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
