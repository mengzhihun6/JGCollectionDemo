//
//  JGCycleCollectionView.h
//  UICollectionDemo
//
//  Created by 郭军 on 2019/6/6.
//  Copyright © 2019 JG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JGCycleCollectionView : UIView

@property (nonatomic, strong) NSArray<NSString *> *data;

/**
 自动翻页 默认 NO
 */
@property (nonatomic, assign) BOOL autoPage;


@end

NS_ASSUME_NONNULL_END
