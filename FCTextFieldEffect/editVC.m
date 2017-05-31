
//
//  editVC.m
//  FCTextFieldEffect
//
//  Created by fc_curry on 2017/5/31.
//  Copyright © 2017年 fc_curry. All rights reserved.
//

#import "editVC.h"

@interface editVC ()

@end

@implementation editVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    self.editText.lineColor = [UIColor whiteColor];
    self.editText.editLineColor = [UIColor redColor];
    self.editText.placeHolderLabel.text = @"我是占位符";
    self.editText.wrongColor = [UIColor yellowColor];
    self.editText.textColor = [UIColor whiteColor];
    self.editText.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.editText.font = [UIFont systemFontOfSize:20.0];
    self.editText.placeHolderFont = [UIFont systemFontOfSize:20.0];
    

//    UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
//    b.backgroundColor = [UIColor yellowColor];
//    b.frame = CGRectMake(0, 0, 10, 10);
//    self.editText.rightView = b;
//    self.editText.rightViewMode = UITextFieldViewModeAlways;
}
- (IBAction)clicks:(id)sender {
    [self.editText wrongAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
