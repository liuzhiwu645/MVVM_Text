//
//  LZWRootViewController.m
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import "LZWRootViewController.h"
#import "LZWRootTableViewCell.h"
#import "LZWRootViewModel.h"
#import "LZWTableViewDataSource.h"
#import "LZWTableViewDelegate.h"

@interface LZWRootViewController ()
@property (nonatomic, strong) UITableView *tableViewRoot;
@property (nonatomic, strong) NSMutableArray *arrayAll;
@property (nonatomic, strong) LZWTableViewDataSource *lzwDatasource;
@property (nonatomic, strong) LZWTableViewDelegate *lzwDelegate;
@end
@implementation LZWRootViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"MVVM_Text";
    self.lzwDelegate = [[LZWTableViewDelegate alloc]init];
    self.lzwDatasource = [[LZWTableViewDataSource alloc]init];
    //进行页面跳转
    self.lzwDelegate.viewControllerLzw = self;
    //创建视图
    [self creatRootTableView];
    //初始化数组
    self.arrayAll = [NSMutableArray array];
    //请求数据
    [self getRootData];
}
#pragma mark -- 创建表格视图
- (void)creatRootTableView
{
    self.tableViewRoot = ({
        UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
        tableView.backgroundColor = [UIColor whiteColor];
        tableView.delegate = _lzwDelegate;
        tableView.dataSource = _lzwDatasource;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:tableView];
        tableView;
    });
    //注册cell
    [self.tableViewRoot registerClass:[LZWRootTableViewCell class] forCellReuseIdentifier:@"cellRoot"];
}
#pragma mark -- 请求数据
- (void)getRootData
{
    LZWRootViewModel *viewModel = [[LZWRootViewModel alloc]init];
    [viewModel getRootDataxxBlock:^(NSMutableArray *array) {
        self.arrayAll = array;
        _lzwDatasource.arrayDataSource = array;
        _lzwDelegate.arrayDelegate = array;
        [self.tableViewRoot reloadData];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
