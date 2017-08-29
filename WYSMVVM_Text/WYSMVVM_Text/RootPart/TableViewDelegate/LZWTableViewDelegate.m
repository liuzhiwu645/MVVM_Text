//
//  LZWTableViewDelegate.m
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import "LZWTableViewDelegate.h"
#import "LZWRootModel.h"
#import "LZWRootViewModel.h"

@implementation LZWTableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    LZWRootViewModel *modeV = [[LZWRootViewModel alloc]init];
    LZWRootModel *model = _arrayDelegate[indexPath.row];
    [modeV lzwViewModelDetailWitnAction:indexPath title:model.goods_name vc:_viewControllerLzw];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
