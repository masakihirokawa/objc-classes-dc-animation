//
//  DCAnimation.h
//  DCAnimationSample
//
//  Created by 廣川政樹 on 2013/05/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCAnimation : UIView

+ (void)fade:(UIImageView *)imageView duration:(float)duration isFadeIn:(BOOL)isFadeIn;
+ (void)slide:(UIImageView *)imageView duration:(float)duration aimRect:(CGRect)rect;
+ (void)rotate:(UIImageView *)imageView duration:(float)duration aimAngle:(float)angle;
+ (void)scale:(UIImageView *)imageView duration:(float)duration aimScale:(float)scale;
+ (void)translate:(UIImageView *)imageView duration:(float)duration movePosition:(float)position;

@end
