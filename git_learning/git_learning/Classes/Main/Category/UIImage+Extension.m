//
//  UIImage+Extension.m
//  git_learning
//
//  Created by 陈佳佳 on 15/11/21.
//  Copyright © 2015年 chenjiajia. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+(UIImage *)imageWithName:(NSString *)imageName
{
    UIImage *image = nil;
    if (iOS7) {
        NSString *newName = [imageName stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
    }
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    return image;
}

@end
