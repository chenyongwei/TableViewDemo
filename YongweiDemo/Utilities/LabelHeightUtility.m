//
//  LabelHeightUtility.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/5/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "LabelHeightUtility.h"
#import "UIFont+DemoPalette.h"

@implementation LabelHeightUtility


+(CGFloat)heightOfCountryTitle:(NSString *)title
{
    CGSize maximumLabelSize = CGSizeMake(COUNTRYITEM_TITLE_WIDTH, FLT_MAX);
    CGSize expectedLabelSize = [title sizeWithFont:[UIFont countryItemTitleFont] constrainedToSize:maximumLabelSize lineBreakMode:NSLineBreakByWordWrapping];
    
    return expectedLabelSize.height;
}

+(CGFloat)heightOfCountryDescription:(NSString *)description
{
    CGSize maximumLabelSize = CGSizeMake(COUNTRYITEM_DESCRIPTION_WIDTH, FLT_MAX);
    CGSize expectedLabelSize = [description sizeWithFont:[UIFont countryItemDescriptionFont] constrainedToSize:maximumLabelSize lineBreakMode:NSLineBreakByWordWrapping];
    
    return expectedLabelSize.height;
}

@end
