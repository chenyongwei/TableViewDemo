//
//  CountryItemTableViewCell.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YWCountryItem.h"

/**
 The cell for CountryItem
 */
@interface CountryItemTableViewCell : UITableViewCell

/**
 Set up data and update UI according to the data
 @param countryItem The data entity for the UI
 */
-(void)updateUIWithData:(YWCountryItem *)countryItem;

@end
