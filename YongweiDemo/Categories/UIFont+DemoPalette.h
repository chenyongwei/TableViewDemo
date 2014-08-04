//
//  UIFont+DemoPalette.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import <UIKit/UIKit.h>

#define YWFontArial @"ArialMT"
#define YWFontArialItalic @"Arial-ItalicMT"

/**
 A UIFont category that gathers all the fonts used in the app for easier reference
 */
@interface UIFont (DemoPalette)

/**
 The font of the country item title in the table view.
 */
+(UIFont *)countryItemTitleFont;

/**
 The font of the country item description in the table view.
 */
+(UIFont *)countryItemDescriptionFont;

@end
