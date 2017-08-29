//
//  LZWRootTableViewCell.m
//  WYSMVVM_Text
//
//  Created by 刘志武 on 2017/8/29.
//  Copyright © 2017年 zhiwuLiu. All rights reserved.
//

#import "LZWRootTableViewCell.h"

@interface LZWRootTableViewCell ()

@property (nonatomic, strong) UIImageView *imageViewLeft;
@property (nonatomic, strong) UILabel *labelName;

@end

@implementation LZWRootTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatLZWRootTableViewCellSubViews];
    }
    return self;
}
#pragma mark -- cell布局
- (void)creatLZWRootTableViewCellSubViews
{
    self.imageViewLeft = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
    _imageViewLeft.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_imageViewLeft];
    
    self.labelName = [[UILabel alloc]initWithFrame:CGRectMake(100, 40, 100, 20)];
    _labelName.textColor = [UIColor lightGrayColor];
    _labelName.font = [UIFont systemFontOfSize:13.0];
    _labelName.textAlignment = NSTextAlignmentCenter;
    _labelName.text = @"123456";
    [self.contentView addSubview:_labelName];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 99, 375, 1)];
    label.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:label];
    
}

-(void)setModelRoot:(LZWRootModel *)modelRoot
{
    _modelRoot = modelRoot;
    
    NSString *name = [NSString stringWithFormat:@"%@", _modelRoot.goods_name];
    NSString *img_url = [NSString stringWithFormat:@"%@", _modelRoot.goods_logo];
    
    _labelName.text = name;
    [_imageViewLeft sd_setImageWithURL:[NSURL URLWithString:img_url] placeholderImage:nil];
    
}

@end
