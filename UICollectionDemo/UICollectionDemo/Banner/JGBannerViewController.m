//
//  ViewController.m
//  UICollectionDemo
//
//  Created by 郭军 on 2019/6/5.
//  Copyright © 2019 JG. All rights reserved.
//

#import "JGBannerViewController.h"
#import "JGCycleCollectionView.h"
#import "JGBannarView.h"
#import "JGCardCollectionView.h"

@interface JGBannerViewController ()

@end


@implementation JGBannerViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JGCycleCollectionView *cycle = [[JGCycleCollectionView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 200)];
     cycle.data = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
    cycle.autoPage = YES;
    [self.view addSubview:cycle];
    
    
    JGBannarView *banner = [[JGBannarView alloc] initWithFrame:CGRectMake(20, 270, self.view.frame.size.width - 40, 200) viewSize:CGSizeMake(self.view.frame.size.width - 40, 200) Type:BannarTypePageControl];
    banner.items = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
    [self.view addSubview:banner];
    
    
    JGCardCollectionView *cardView = [[JGCardCollectionView alloc] initWithFrame:CGRectMake(0, 500, self.view.frame.size.width, 200)];
    [self.view addSubview:cardView];
    
}




#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    //计算中心位置
//    double ceterX = scrollView.contentOffset.x + scrollView.frame.size.width * 0.5;

//    int currentPage = floor(ceterX / 170.0);
    
    
    /*
     -127.000000 == 80.000000
     43.000000 == 250.000000
      213.000000 == 420.000000
      383.000000 == 590.000000   170
     */
    
//    if (currentPage < 0) {
//
//        CGPoint point = CGPointMake(383, 0);
//
//        [scrollView setContentOffset:point animated:NO];
//    }else if (currentPage > self.DataArray.count - 1) {
//
//        CGPoint point = CGPointMake(-127, 0);
//
//        [scrollView setContentOffset:point animated:NO];
//    }
//
    
    
    
//    NSLog(@"%d == %f - %f - %f", currentPage, scrollView.contentOffset.x, ceterX, self.view.frame.size.width);
    
//    if(contentOffsetX >= (2 * SelfWidth_LMJ)) {
//        _currentPageIndex = [self getNextPageIndexWithCurrentPageIndex:_currentPageIndex];
//
//        // 调用代理函数 当前页面序号
//        if ([self.delegate respondsToSelector:@selector(loopScrollView:currentContentViewAtIndex:)]) {
//            [self.delegate loopScrollView:self currentContentViewAtIndex:_currentPageIndex];
//        }
//
//        [self resetContentViews];
//    }
//
//    if(contentOffsetX <= 0) {
//        _currentPageIndex = [self getPreviousPageIndexWithCurrentPageIndex:_currentPageIndex];
//
//        // 调用代理函数 当前页面序号
//        if ([self.delegate respondsToSelector:@selector(loopScrollView:currentContentViewAtIndex:)]) {
//            [self.delegate loopScrollView:self currentContentViewAtIndex:_currentPageIndex];
//        }
//
//        [self resetContentViews];
//    }
}


@end
