//
//  LZWRootViewModel.m
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import "LZWRootViewModel.h"
#import "LZWFirstViewController.h"

@implementation LZWRootViewModel

//初始化
-(instancetype)init
{
    self = [super init];
    if (self) {
        self.arrayData = [NSMutableArray array];
    }
    return self;
}
#pragma mark -- 请求数据
-(void)getRootDataxxBlock:(LzwBlock)xxblock
{
    NSLog(@"当前线程是 = %@", [NSThread currentThread]);
    NSString *baseUrl = @"";
    NSMutableDictionary *dictData = [NSMutableDictionary dictionary];
    
    [LZFNetWoking getWithUrl:baseUrl params:dictData success:^(id response) {
            NSMutableDictionary *dicResult = response;
            if ([[dicResult objectForKey:@"resultFlag"] isEqualToString:@"1"]) {
                NSMutableArray *arraySection = [dicResult objectForKey:@"memberCollectionFormBeans"];
                for (NSMutableDictionary *dictSection in arraySection) {
                    LZWRootModel *modelSection = [[LZWRootModel alloc]init];
                    [modelSection setValuesForKeysWithDictionary:dictSection];
                    [_arrayData addObject:modelSection];
                }
                //返回数据
                xxblock(_arrayData);
            }
            else
            {
                NSLog(@"数据请求失败!!!!!!!!!");
            }
        } fail:^(NSError *error) {
            
        } showHUD:NO];
}
#pragma mark -- 点击事件处理
-(void)lzwViewModelDetailWitnAction:(NSIndexPath *)indexPatch title:(NSString *)title vc:(UIViewController *)viewVC
{
    LZWFirstViewController *firstVc = [[LZWFirstViewController alloc]init];
    firstVc.navigationItem.title = title;
    [viewVC.navigationController pushViewController:firstVc animated:YES];
//    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"" message:title delegate:nil cancelButtonTitle:@"sure" otherButtonTitles:nil, nil];
//    [alert show];
}

@end
