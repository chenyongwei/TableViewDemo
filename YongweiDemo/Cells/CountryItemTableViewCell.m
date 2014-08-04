//
//  CountryItemTableViewCell.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "CountryItemTableViewCell.h"
#import "UIColor+DemoPalette.h"
#import "UIFont+DemoPalette.h"
#import "LabelHeightUtility.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation CountryItemTableViewCell
{
    UILabel *_lbTitle;
    UILabel *_lbDescription;
    UIImageView *_imgView;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _lbTitle = [[UILabel alloc] init];
        _lbTitle.font = [UIFont countryItemTitleFont];
        _lbTitle.textColor = [UIColor countryItemTitleColor];
        _lbTitle.numberOfLines = 0;
        [self addSubview:_lbTitle];
        
        _lbDescription = [[UILabel alloc] init];
        _lbDescription.font = [UIFont countryItemDescriptionFont];
        _lbDescription.textColor = [UIColor countryItemDescriptionColor];
        _lbDescription.numberOfLines = 0;
        [self addSubview:_lbDescription];
        
        _imgView = [[UIImageView alloc] init];
        [self addSubview:_imgView];
    }
    return self;
}

-(void)updateUIWithData:(YWCountryItem *)countryItem
{
    _lbTitle.text = countryItem.title;
    _lbDescription.text = countryItem.description;
    [_imgView setImageWithURL:countryItem.imageURL placeholderImage:nil];
    
    
    CGFloat titleHeight = [LabelHeightUtility heightOfCountryTitle:countryItem.title];
    CGFloat descriptionHeight = [LabelHeightUtility heightOfCountryDescription:countryItem.description];

    _lbTitle.frame = CGRectMake(COUNTRYITEM_TITLE_PADDINGLEFT,
                                COUNTRYITEM_TITLE_PADDINGTOP,
                                COUNTRYITEM_TITLE_WIDTH,
                                titleHeight);
    
    _lbDescription.frame = CGRectMake(COUNTRYITEM_DESCRIPTION_PADDINGLEFT,
                                      COUNTRYITEM_DESCRIPTION_PADDINGTOP + COUNTRYITEM_TITLE_PADDINGTOP + titleHeight,
                                      COUNTRYITEM_DESCRIPTION_WIDTH,
                                      descriptionHeight);
    
    _imgView.frame = CGRectMake(COUNTRYITEM_IMAGE_PADDINGLEFT,
                                COUNTRYITEM_IMAGE_PADDINGTOP + COUNTRYITEM_TITLE_PADDINGTOP + titleHeight,
                                COUNTRYITEM_IMAGE_WIDTH,
                                COUNTRYITEM_IMAGE_HEIGHT);
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
