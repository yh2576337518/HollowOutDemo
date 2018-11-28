//
//  ViewController.m
//  HollowOutDemo
//
//  Created by 惠上科技 on 2018/11/28.
//  Copyright © 2018 惠上科技. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SubtractMask.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blackView;
@property (weak, nonatomic) IBOutlet UIView *visualEffectContainer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark ------放大还原
- (IBAction)actionScale:(id)sender{
    [UIView animateWithDuration:0.5 animations:^{
        self.blackView.subtractMaskView.transform = CGAffineTransformMakeScale(2, 2);
        self.visualEffectContainer.subtractMaskView.transform = CGAffineTransformMakeScale(2, 2);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            self.blackView.subtractMaskView.transform = CGAffineTransformIdentity;
            self.visualEffectContainer.subtractMaskView.transform = CGAffineTransformIdentity;
        }];
    }];
}

#pragma mark ------镂空图案
- (IBAction)actionImage:(id)sender{
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pikaqiu"]];
//    imageView.frame = CGRectMake(30, 20, 100, 95);
//    self.blackView.subtractMaskView = imageView;
//    self.visualEffectContainer.subtractMaskView = imageView;
    
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(90, 35, 60, 60)];
    backView.layer.cornerRadius = 30;
    backView.backgroundColor = [UIColor redColor];
    backView.layer.masksToBounds = YES;
    self.blackView.subtractMaskView = backView;
    self.visualEffectContainer.subtractMaskView = backView;
}

#pragma mark ------镂空文字
- (IBAction)actionText:(id)sender{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 240, 128)];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:24];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"SubtractMask";
    self.blackView.subtractMaskView = label;
    self.visualEffectContainer.subtractMaskView = label;
}

@end
