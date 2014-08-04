//
//  CountryItemTableViewCell.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YWCountryItem.h"

@interface CountryItemTableViewCell : UITableViewCell

-(void)updateUIWithData:(YWCountryItem *)countryItem;

@end
