//
//  JGCardCollectionView.m
//  UICollectionDemo
//
//  Created by 郭军 on 2019/6/6.
//  Copyright © 2019 JG. All rights reserved.
//

#import "JGCardCollectionView.h"
#import "JGCollectionViewCell.h"
#import "JGCollectionViewFlowLayout.h"

@interface JGCardCollectionView () <UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

static NSString * const JGCollectionViewCellId = @"JGCollectionViewCellId";

@implementation JGCardCollectionView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
    }
    return self;
}

- (void)buildUI {
    JGCollectionViewFlowLayout *layout = [[JGCollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(160, 160);

    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.pagingEnabled = true;
    self.collectionView.backgroundColor = [UIColor clearColor];
    [self.collectionView registerClass:[JGCollectionViewCell class] forCellWithReuseIdentifier:JGCollectionViewCellId];
    self.collectionView.showsHorizontalScrollIndicator = false;
    [self addSubview:self.collectionView];
    
 
}

#pragma mark -
#pragma mark CollectionViewDelegate&DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    JGCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:JGCollectionViewCellId forIndexPath:indexPath];
    cell.TitleLbl.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
