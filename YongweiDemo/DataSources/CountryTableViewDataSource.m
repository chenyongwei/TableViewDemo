//
//  CountryTableViewDataSource.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "CountryTableViewDataSource.h"
#import "CountryDataManager.h"
#import "CountryItemTableViewCell.h"

@implementation CountryTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[CountryDataManager manager] country].items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"CountryItemCell";
    
    CountryItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[CountryItemTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell updateUIWithData:[[[CountryDataManager manager] country].items objectAtIndex:indexPath.row]];
    return cell;
}

@end
