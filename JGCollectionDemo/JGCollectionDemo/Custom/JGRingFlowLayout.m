//
//  JGRingFlowLayout.m
//  JGCollectionDemo
//
//  Created by 郭军 on 2019/6/6.
//  Copyright © 2019 JG. All rights reserved.
//

#import "JGRingFlowLayout.h"

@interface JGRingFlowLayout (){
    NSMutableArray * _attributeArray;
}

@end

@implementation JGRingFlowLayout


-(void)prepareLayout{
    [super prepareLayout];
    _itemCount = (int)[self.collectionView numberOfItemsInSection:0];
    _attributeArray = [NSMutableArray array];
    CGFloat radius  =MIN(self.collectionView.frame.size.width, self.collectionView.frame.size.height)/2;
    CGPoint center = CGPointMake(self.collectionView.frame.size.width/2, self.collectionView.frame.size.height/2);
    for (int i=0; i<_itemCount; i++) {
        UICollectionViewLayoutAttributes * attris = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        attris.size = CGSizeMake(50, 50);
        float x = center.x+cosf(2*M_PI/_itemCount*i)*(radius-25);
        float y = center.y+sinf(2*M_PI/_itemCount*i)*(radius-25);
        attris.center = CGPointMake(x, y);
        [_attributeArray addObject:attris];
    }
}


-(CGSize)collectionViewContentSize{
    return self.collectionView.frame.size;
}
-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return _attributeArray;
}

@end
