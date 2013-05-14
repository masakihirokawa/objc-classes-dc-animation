//
//  DCAnimation.m
//  DCAnimationSample
//
//  Created by 廣川政樹 on 2013/05/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "DCAnimation.h"

@implementation DCAnimation

//フェードアニメーション
+ (void)fade:(UIImageView *)imageView
    duration:(float)duration
    isFadeIn:(BOOL)isFadeIn
{
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  imageView.alpha = isFadeIn ? 0 : 1.0f;
  imageView.alpha = isFadeIn ? 1.0f : 0;
  [UIView commitAnimations];
}

//スライドアニメーション
+ (void)slide:(UIImageView *)imageView
     duration:(float)duration
      aimRect:(CGRect)rect
{
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  [imageView setFrame:rect];
  [UIView commitAnimations];
}

//回転アニメーション
+ (void)rotate:(UIImageView *)imageView
      duration:(float)duration
      aimAngle:(float)angle
{
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  CGAffineTransform rotate = CGAffineTransformMakeRotation(angle * (M_PI / 180.0f));
  [imageView setTransform:rotate];
  [UIView commitAnimations];
}

//拡縮アニメーション
+ (void)scale:(UIImageView *)imageView
      duration:(float)duration
      aimScale:(float)scale
{
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  CGAffineTransform aimScale = CGAffineTransformMakeScale(scale, scale);
  [imageView setTransform:aimScale];
  [UIView commitAnimations];
}

//XY方向に平行移動
+ (void)translate:(UIImageView *)imageView
         duration:(float)duration
      movePosition:(float)position
{
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  CGAffineTransform translate = CGAffineTransformMakeTranslation(position, position);
  [imageView setTransform:translate];
  [UIView commitAnimations];
}

@end
