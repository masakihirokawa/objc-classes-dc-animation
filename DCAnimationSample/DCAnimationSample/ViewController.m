//
//  ViewController.m
//  DCAnimationSample
//
//  Created by 廣川政樹 on 2013/05/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property BOOL isAnimationTargetFadeIn;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

//フェードアニメーション実行
- (IBAction)startFadeAnimation:(id)sender {
  //アニメーション秒数とフェードモードを指定
  [DCAnimation fade:self.animationTargetImage
           duration:0.5f
           isFadeIn:_isAnimationTargetFadeIn];
  //フェードインフラグ切り替え
  _isAnimationTargetFadeIn = !_isAnimationTargetFadeIn;
}

//スライドアニメーション実行
- (IBAction)startSlideAnimation:(id)sender {
  //アニメーション秒数と目標座標・サイズを指定
  [DCAnimation slide:self.animationTargetImage
            duration:0.5f
             aimRect:CGRectMake(64, 64, 57, 57)];
}

//回転アニメーション実行
- (IBAction)startRotateAnimation:(id)sender {
  //アニメーション秒数と目標回転度数を指定
  [DCAnimation rotate:self.animationTargetImage
             duration:0.5f
             aimAngle:90];
}

- (IBAction)startScaleAnimation:(id)sender {
  //アニメーション秒数と目標スケール値を指定
  [DCAnimation scale:self.animationTargetImage
            duration:0.5f
            aimScale:2.0f];
}

- (IBAction)startTranslateAnimation:(id)sender {
  //アニメーション秒数とXYの移動量を指定
  [DCAnimation translate:self.animationTargetImage
                duration:0.5f
             movePosition:100];
}

@end
