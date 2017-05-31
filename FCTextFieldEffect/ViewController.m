
//
//  ViewController.m
//  FCTextFieldEffect
//
//  Created by fc_curry on 2017/5/31.
//  Copyright © 2017年 fc_curry. All rights reserved.
//

#import "ViewController.h"
#import "editVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
    b.frame = CGRectMake(100, 160, 100, 100);
    b.backgroundColor = [UIColor blueColor];
    [self.view addSubview:b];
    [b addTarget:self action:@selector(hehe:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)hehe:(id)sender{
    editVC *vc = [[editVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
