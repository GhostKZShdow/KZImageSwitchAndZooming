//
//  KZView.h
//  ipaddd
//
//  Created by 张坤 on 16/5/30.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KZView : UIView<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) UIImageView *imageView;

- (id)initWithFrame:(CGRect)frame imageView:(UIImageView *)imageView;

- (void)imageBackOriginalSize:(NSArray *)imageViews;

@end
