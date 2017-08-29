//
//  LZWTableViewDelegate.h
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LZWTableViewDelegate : NSObject<UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *arrayDelegate;

@property (nonatomic, strong) UIViewController *viewControllerLzw;

@end
