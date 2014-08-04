//
//  YWCommon.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#define COUNTRYDATA_URLSTR @"https://dl.dropboxusercontent.com/u/746330/facts.json"
// the client supported/accepted JSON content types
#define JSON_CONTENTTYPE [NSSet setWithObjects:@"text/plain", @"application/json", nil]

// the total padding height for counting cell height with label height
#define COUNTRYITEM_PADDINGHEIGHT 20
// the min height of the cell
// if the data for the cell is empty, show a placeholder cell with this height
#define COUNTRYITEM_MINHEIGHT 100

// title position and width define
#define COUNTRYITEM_TITLE_PADDINGTOP 5
#define COUNTRYITEM_TITLE_PADDINGLEFT 5
#define COUNTRYITEM_TITLE_WIDTH 300

// description position and width define
#define COUNTRYITEM_DESCRIPTION_PADDINGTOP 5
#define COUNTRYITEM_DESCRIPTION_PADDINGLEFT 5
#define COUNTRYITEM_DESCRIPTION_WIDTH 200

// image position and width define
#define COUNTRYITEM_IMAGE_PADDINGTOP 5
#define COUNTRYITEM_IMAGE_PADDINGLEFT 210
#define COUNTRYITEM_IMAGE_WIDTH 100
#define COUNTRYITEM_IMAGE_HEIGHT 50

