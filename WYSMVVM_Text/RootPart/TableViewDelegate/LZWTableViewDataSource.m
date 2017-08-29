//
//  LZWTableViewDataSource.m
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import "LZWTableViewDataSource.h"
#import "LZWRootTableViewCell.h"
#import "LZWRootModel.h"

@implementation LZWTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_arrayDataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LZWRootTableViewCell *cellR = [tableView dequeueReusableCellWithIdentifier:@"cellRoot"];
    cellR.modelRoot = _arrayDataSource[indexPath.row];
    return cellR;
}

@end
