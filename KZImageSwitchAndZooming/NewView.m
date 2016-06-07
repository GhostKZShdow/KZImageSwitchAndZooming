//
//  NewView.m
//  ipaddd
//
//  Created by 张坤 on 16/5/30.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import "NewView.h"
#import "KZView.h"

@interface NewView ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
    NSMutableArray *_images;
}
@end

@implementation NewView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _scrollView = [[UIScrollView alloc]initWithFrame:self.bounds];
        _scrollView.delegate = self;
        //是否整页翻动
        _scrollView.pagingEnabled = YES;
        //是否显示水平方向的滚动条
        _scrollView.showsHorizontalScrollIndicator = NO;
        //是否显示竖直方向的滚动条
        _scrollView.showsVerticalScrollIndicator = NO;
        //遇到边框是否反弹
        _scrollView.bounces = NO;
        [self addSubview:_scrollView];
        _images = [NSMutableArray arrayWithCapacity:20];
        NSArray *imgArray = [NSArray arrayWithObjects:@"firPage.PNG",@"secPage.PNG",@"thiPage.PNG", nil];
        //存放图片的数组
        for (int i=0; i<imgArray.count; i++) {
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
            [imageView setImage:[UIImage imageNamed:imgArray[i]]];
            KZView *kView = [[KZView alloc]initWithFrame:CGRectMake(frame.size.width * i, 0, frame.size.width, frame.size.height) imageView:imageView];
            [_images addObject:imageView];
            [_scrollView addSubview:kView];
        }
        //滚动范围的大小
        _scrollView.contentSize = CGSizeMake(self.bounds.size.width * imgArray.count, self.bounds.size.height);
        //监控目前滚动的位置
        _scrollView.contentOffset = CGPointMake(0, 0);
        [_scrollView setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}
//结束滚动的时候上一页的图片回到原始大小
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    KZView *kView = [[KZView alloc]init];
    [kView imageBackOriginalSize:_images];
}
@end
