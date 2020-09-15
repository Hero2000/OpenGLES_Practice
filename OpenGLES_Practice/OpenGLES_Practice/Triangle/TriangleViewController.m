//
//  TriangleViewController.m
//  OpenGLES_Practice
//
//  Created by 尹一博 on 2020/9/14.
//  Copyright © 2020 Hero. All rights reserved.
//

#import "TriangleViewController.h"
#import "TriangleView.h"

@interface TriangleViewController ()

@property (nonatomic, strong) TriangleView *glView;
@end

@implementation TriangleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor whiteColor];
    self.glView = [[TriangleView alloc] initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:self.glView];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"icon_select_close"] forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(40, 40, 24, 20);
    [self.view addSubview:backBtn];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
