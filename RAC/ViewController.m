//
//  ViewController.m
//  RAC
//
//  Created by gengjunjie on 2018/2/27.
//  Copyright © 2018年 gengjunjie. All rights reserved.
//

#import "ViewController.h"
#import "Lottie.h"

@interface ViewController ()

@property (nonatomic, strong) LOTAnimationView *lottieLogo;
@property (nonatomic, strong) UIButton *lottieButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    self.lottieLogo = [LOTAnimationView animationNamed:@"1"];
    self.lottieLogo.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.lottieLogo];
    
    self.lottieButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.lottieButton addTarget:self action:@selector(_playLottieAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.lottieButton];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.lottieLogo play];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.lottieLogo pause];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGRect lottieRect = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height * 0.3);
    self.lottieLogo.frame = lottieRect;
    self.lottieButton.frame = lottieRect;
    
//    self.tableView.frame = CGRectMake(0, CGRectGetMaxY(lottieRect), CGRectGetWidth(lottieRect), self.view.bounds.size.height - CGRectGetMaxY(lottieRect));
}

- (void)_playLottieAnimation {
    self.lottieLogo.animationProgress = 0;
//    [self.lottieLogo play];
    [self.lottieLogo playWithCompletion:^(BOOL animationFinished) { // 开始动画并在完成时回调
        
    }];
}


@end
