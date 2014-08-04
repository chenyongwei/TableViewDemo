//
//  CountryViewController.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "CountryViewController.h"
#import "CountryTableViewDataSource.h"
#import "CountryTableViewDelegate.h"

@interface CountryViewController ()

@end

@implementation CountryViewController
{
    UITableView *_tableView;
    id <UITableViewDataSource> _tableViewDataSource;
    id <UITableViewDelegate> _tableViewDelegate;
    
    UIRefreshControl *_refreshControl;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupTableView];
    [self setupRefreshControl];
}

-(void)setupTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    _tableViewDataSource = [[CountryTableViewDataSource alloc] init];
    _tableViewDelegate = [[CountryTableViewDelegate alloc] init];
    _tableView.dataSource = _tableViewDataSource;
    _tableView.delegate = _tableViewDelegate;
    
    [self.view addSubview:_tableView];
}

-(void)setupRefreshControl
{
    _refreshControl = [[UIRefreshControl alloc] init];
    [_refreshControl addTarget:self action:@selector(requestNewData) forControlEvents:UIControlEventValueChanged];
    _refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString: @"Getting new data..."];
    [_tableView addSubview:_refreshControl];
}

-(void)requestNewData
{
    // the signal of cache
    BFTaskCompletionSource *cacheCS = [BFTaskCompletionSource taskCompletionSource];
    [[CountryDataManager manager] cacheCountry:cacheCS];
    // cache done
    [cacheCS.task continueWithExecutor:[BFExecutor mainThreadExecutor] withBlock:^id(BFTask *task) {
        if (task.error) {
            [_refreshControl endRefreshing]; //end refreshing status if request failed
            [self showErrorAlert:@"Network error, please check your connnection"];
        }
        else {
            [self refreshTableView];
        }
        return nil; // Bolts syntax required a return
    }];
}

-(void)refreshTableView
{
    // reload tableView data
    [_tableView reloadData];
    
    // update refreshContrl UI
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    NSString *lastUpdateStr = [NSString stringWithFormat:@"Last updated on: %@", [formatter stringFromDate:[NSDate date]]];
    _refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:lastUpdateStr];
    [_refreshControl endRefreshing];
}

@end
