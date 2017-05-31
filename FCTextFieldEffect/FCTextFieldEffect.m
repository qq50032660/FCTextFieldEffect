//
//  FCTextFieldEffect.m
//  FCTextFieldEffect
//
//  Created by fc_curry on 2017/5/31.
//  Copyright © 2017年 fc_curry. All rights reserved.
//

#import "FCTextFieldEffect.h"

@interface FCTextFieldEffect (){
    //    UILabel *self.self.placeholder;
    CGFloat inset;
    
    CALayer *leftLayer;
    CGPoint textFieldInset,placeholderInset;
    
    CALayer *wrongLayer;
}
@end

@implementation FCTextFieldEffect

- (void)drawRect:(CGRect)rect {
    
    [self addPlaceHolderLabel];
    wrongLayer.frame = CGRectMake(0, self.bounds.size.height, self.bounds.size.width, 0);
    leftLayer.frame = CGRectMake(0, self.bounds.size.height-3, self.bounds.size.width, 3);
    
    leftLayer.backgroundColor = self.lineColor.CGColor;
    wrongLayer.borderColor = [UIColor clearColor].CGColor;
    
    [self setBorderLayer];
    
    
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    self.delegate = self;
    if (self) {
        self.placeHolderLabel = [[UILabel alloc] init];
        self.placeHolderLabel.text = @"Add comment here";
        self.placeHolderLabel.textColor = [UIColor whiteColor];
        self.placeHolderLabel.backgroundColor=[UIColor clearColor];
        self.placeHolderLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14.0];
        self.placeHolderLabel.textAlignment = NSTextAlignmentLeft;
        
        
        placeholderInset = CGPointMake(6, 6);
        textFieldInset = CGPointMake(6, 6);
        
        leftLayer=[[CALayer alloc] init];
        
        
        wrongLayer=[[CALayer alloc] init];
        wrongLayer.borderWidth=3.0f;
//        self.backgroundColor=[UIColor blueColor];
        
//        [self addTarget: action:@selector(textBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
//        [self addTarget: action:@selector(textEndEditing:) forControlEvents:UIControlEventEditingDidEnd];
        
    }
    
    return self;
}

- (void)wrongAnimation{
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseIn animations:^{
        wrongLayer.borderColor = self.wrongColor.CGColor;
        wrongLayer.frame = CGRectMake(0, 20, self.bounds.size.width, self.bounds.size.height-20);
        leftLayer.frame = CGRectMake(0, self.bounds.size.height, self.bounds.size.width, 0);
    } completion:^(BOOL finished) {
        [self performSelector:@selector(delayMethod:) withObject:self afterDelay:1];

    }];
}
- (void)delayMethod:(id)sender{
    wrongLayer.borderColor = [UIColor clearColor].CGColor;
    wrongLayer.frame = CGRectMake(0, self.bounds.size.height, self.bounds.size.width, 0);
    leftLayer.frame = CGRectMake(0, self.bounds.size.height-3, self.bounds.size.width, 3);
}
-(void)setPlaceholderHeight:(CGFloat)placeholderHeight{
    
}
//- (CGRect)rightViewRectForBounds:(CGRect)bounds {
//    
//    CGRect textRect = [super rightViewRectForBounds:bounds];
//    textRect.origin.x -= 10;
//    return textRect;
//}
- (void)addPlaceHolderLabel
{
    self.placeHolderLabel.font = self.placeHolderFont;
    self.placeHolderLabel.frame=CGRectMake(0, self.bounds.size.height-23, self.bounds.size.width, 20);
    [self addSubview:self.placeHolderLabel];
}

-(void)setBorderLayer{
    [self.layer addSublayer:wrongLayer];
    [self.layer addSublayer:leftLayer];
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds{
    return CGRectMake(bounds.origin.x + bounds.size.width - 30,30, 16, 16);
}
-(CGRect)textRectForBounds:(CGRect)bounds{
    return CGRectMake(bounds.origin.x, bounds.origin.y + 10, bounds.size.width -30, bounds.size.height);
}
-(CGRect)editingRectForBounds:(CGRect)bounds{
    return [self textRectForBounds:bounds];
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
    //下划线颜色
    leftLayer.backgroundColor = self.editLineColor.CGColor;
    [UIView animateWithDuration:0.5 delay:0.2 options:0 animations:^{
        self.placeHolderLabel.frame=CGRectMake(0, 0, self.bounds.size.width, 20);
        self.placeHolderLabel.font = [UIFont systemFontOfSize:15.0];

    } completion:^(BOOL finished) {
        
    }];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self resignFirstResponder];
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    //下划线颜色
    leftLayer.backgroundColor = self.lineColor.CGColor;
    if([textField.text isEqual:@""]){
        [UIView animateWithDuration:0.5 animations:^{
            
            self.placeHolderLabel.frame=CGRectMake(0, self.bounds.size.height-23, self.bounds.size.width, 20);
            self.placeHolderLabel.font = self.placeHolderFont;
            
        }];
    }
    
}


@end
