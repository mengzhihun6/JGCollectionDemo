//
//  JGCustomViewController.m
//  JGCollectionDemo
//
//  Created by 郭军 on 2019/6/6.
//  Copyright © 2019 JG. All rights reserved.
//

#import "JGCustomViewController.h"
#import "JGNormalController.h" //普通
#import "JGWaterfallFlowController.h" //瀑布流
#import "JGRingController.h" // 环形
#import "JGCubeController.h" // 立方形
#import "JGBallController.h"//球形

@interface JGCustomViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, strong) NSArray *DataArrM;

@end

static NSString * const UITableViewCellId = @"UITableViewCellId";


@implementation JGCustomViewController


- (NSArray *)DataArrM {
    if (!_DataArrM) {
        _DataArrM = @[@"普通" ,@"瀑布流" ,@"环形" ,@"立方形" ,@"球形"];
    }
    return _DataArrM;
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.delaysContentTouches = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:UITableViewCellId];
        _tableView.tableFooterView = [[UIView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
    }
    return _tableView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"CollectionView";
    
    [self.view addSubview:self.tableView];

}



#pragma mark - UITableViewDataSource -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.DataArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:UITableViewCellId forIndexPath:indexPath];
    cell.textLabel.text = [self.DataArrM objectAtIndex:indexPath.row];
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //@[@"普通" ,@"瀑布流" ,@"环形" ,@"立方形" ,@"球形"];
    switch (indexPath.row) {
        case 0:
            {
                JGNormalController *VC = [JGNormalController new];
                VC.hidesBottomBarWhenPushed = YES;
                [self.navigationController pushViewController:VC animated:YES];
            }
            break;
        case 1:
        {
            JGWaterfallFlowController *VC = [JGWaterfallFlowController new];
            VC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 2:
        {
            JGRingController *VC = [JGRingController new];
            VC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 3:
        {
            JGCubeController *VC = [JGCubeController new];
            VC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 4:
        {
            JGBallController *VC = [JGBallController new];
            VC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        default:
            break;
    }
    
    
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01f;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
