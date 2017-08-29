//
//  LZWTableViewDataSource.h
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LZWTableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrayDataSource;

@end
