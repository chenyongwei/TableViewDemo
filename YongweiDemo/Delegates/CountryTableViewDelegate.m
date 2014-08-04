//
//  CountryTableViewDelegate.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "CountryTableViewDelegate.h"
#import "YWCountryItem.h"
#import "CountryDataManager.h"
#import "UIFont+DemoPalette.h"
#import "LabelHeightUtility.h"

@implementation CountryTableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YWCountryItem *countryItem = [[CountryDataManager manager].country.items objectAtIndex:indexPath.row];
    CGFloat titleHeight = [LabelHeightUtility heightOfCountryTitle:countryItem.title];
    CGFloat descriptionHeight = [LabelHeightUtility heightOfCountryDescription:countryItem.description];
    
    CGFloat totalHeight = titleHeight + descriptionHeight + COUNTRYITEM_PADDINGHEIGHT;
    return MAX(COUNTRYITEM_MINHEIGHT, totalHeight);
}

@end
