//
//  FCTextFieldEffect.h
//  FCTextFieldEffect
//
//  Created by fc_curry on 2017/5/31.
//  Copyright © 2017年 fc_curry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCTextFieldEffect : UITextField<UITextFieldDelegate>

@property (nonatomic,strong) UIColor *editLineColor;//下划线编辑时的颜色
@property (nonatomic,strong) UIColor *lineColor;//初始化下划线的颜色
@property (strong ,nonatomic) UILabel *placeHolderLabel;//占位符label
//@property (nonatomic) CGFloat placeholderHeight;//占位符的height
@property (nonatomic, strong)UIColor *wrongColor;//错误边框的颜色
@property (nonatomic, strong)UIFont *placeHolderFont;//占位符的font

- (void)wrongAnimation;

@end
