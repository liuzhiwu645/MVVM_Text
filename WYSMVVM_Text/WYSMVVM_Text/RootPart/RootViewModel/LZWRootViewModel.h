//
//  LZWRootViewModel.h
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LZFNetWoking.h"
#import "LZWRootModel.h"

typedef void(^LzwBlock)(NSMutableArray *array);

@interface LZWRootViewModel : NSObject
-(void)getRootDataxxBlock:(LzwBlock)xxblock;
@property (nonatomic, strong) NSMutableArray *arrayData;

//逻辑跳转
- (void)lzwViewModelDetailWitnAction:(NSIndexPath *)indexPatch title:(NSString *)title vc:(UIViewController *)viewVC;

@end
