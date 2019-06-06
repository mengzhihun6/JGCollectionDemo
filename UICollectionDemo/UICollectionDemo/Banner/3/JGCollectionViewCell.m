//
//  JGCollectionViewCell.m
//  UICollectionDemo
//
//  Created by 郭军 on 2019/6/5.
//  Copyright © 2019 JG. All rights reserved.
//

#import "JGCollectionViewCell.h"

#define JGRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define JGRandomColor   JGRGBColor(arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255))




@implementation JGCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = JGRandomColor;
        
        _TitleLbl = [[UILabel alloc] initWithFrame:self.bounds];
        _TitleLbl.textColor = [UIColor redColor];
        _TitleLbl.font = [UIFont systemFontOfSize:50];
        _TitleLbl.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_TitleLbl];
        
    }
    return self;
}


@end
