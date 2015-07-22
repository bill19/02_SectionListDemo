//
//  RootViewController.m
//  02_SectionListDemo
//
//  Created by sunhao on 15-7-22.
//  Copyright (c) 2015年 SH. All rights reserved.
//

#import "RootViewController.h"
#import "SectionTableView.h"
#import "SectionModel.h"
@interface RootViewController ()
{
    SectionTableView * _tableView;
}
@end

@implementation RootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [SectionTableView sectionTableViewWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _tableView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_tableView];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(barBtnClicked)];
    
    //创建分组
    SectionModel * readModel = [SectionModel SectionModelWithTypr:SectionTypeRead];
    readModel.dataArray = @[@"",@"",@"",@""];
    readModel.countCell = readModel.dataArray.count;
    
}

- (void)barBtnClicked{
    
    NSLog(@"self.view %@",NSStringFromCGRect(self.view.frame));
    NSLog(@"_tableView . frame %@",NSStringFromCGRect(_tableView.frame));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
