//
//  ViewController.m
//  SearchAnimation
//
//  Created by lanou3g on 15/4/23.
//  Copyright (c) 2015年 赵雪松. All rights reserved.
//

#import "ViewController.h"
#import "DBSphereView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    - (void)setCloudTags:(NSArray *)array;
//    - (void)timerStart;
//    - (void)timerStop;
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    DBSphereView *sphere = [[DBSphereView alloc] initWithFrame:CGRectMake(20, 50, 375 - 40, 300)];
    sphere.backgroundColor = [UIColor clearColor];
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        UIColor *color = [UIColor colorWithRed:arc4random()% (255 - 0) / 255.0 green:arc4random()% (255 - 0) / 255.0 blue:arc4random()% (255 - 0) / 255.0 alpha:1.0];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 0, 70, 30);
//        button.backgroundColor = [UIColor blackColor];
//        button.layer.masksToBounds = YES;
//        button.layer.cornerRadius = 15;
        [button setTitle:[NSString stringWithFormat:@"%d", i * 1000] forState:UIControlStateNormal];
        [button setTitleColor:color forState:UIControlStateNormal];
        button.tag = 100 + i;
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [sphere addSubview:button];
        [array addObject:button];
        
    }
    
    [sphere setCloudTags:array];
    [self.view addSubview:sphere];
    
    [sphere timerStart];
}

- (void) buttonAction:(UIButton *)sender{
    if (sender.tag == 100) {
        NSLog(@"000000000");
    }else if (sender.tag == 101){
        NSLog(@"111111111");
    }else{
        NSLog(@"2");
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
