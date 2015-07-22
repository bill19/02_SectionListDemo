//
//  SectionTableView.m
//  02_SectionListDemo
//
//  Created by sunhao on 15-7-22.
//  Copyright (c) 2015年 SH. All rights reserved.
//

#import "SectionTableView.h"


@interface SectionTableView()<UITableViewDelegate,UITableViewDataSource>

/**
 *  主要内容 tableView
 */
@property(nonatomic,weak)UITableView * tableView;

@end


@implementation SectionTableView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self makeContenView:frame];
    }
    return self;
}

#pragma mark - inner

/**
 *  创建内容View，hold住程序运行过程
 *
 *  @param hostViewFrame
 */

- (void)makeContenView:(CGRect)hostViewBounds{

    
    UITableView * tableView = [[UITableView alloc]initWithFrame:hostViewBounds style:UITableViewStylePlain];
    self.tableView = tableView;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    //注册
    [self.tableView registerClass:[UITableViewCell  class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    
}

#pragma mark UITableViewDelegate -UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = @"test";
    return cell;
    
}

#pragma mark - Outer 对外开放

+ (instancetype)sectionTableViewWithFrame:(CGRect)frame{

    SectionTableView * mainView = [[SectionTableView alloc]init];
    mainView.frame = frame;
    
    return mainView;
}

- (void)reloadDataWithSectionArray:(NSArray *)sectionArray{

    
}

@end
