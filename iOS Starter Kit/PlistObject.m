//
//  pdfItem.m
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import "PlistObject.h"
#import "Category.h"

@implementation PlistObject

@synthesize title;
@synthesize description;
@synthesize filename;
@synthesize thumbnail;
@synthesize category;
@synthesize sortOrder;

+ (PlistObject *)createPlistObjectWithDictionary:(NSDictionary *)values inPlistLoaderAndDataManager:(PlistLoaderAndDataManager *)plistLoaderAndDataManager;
{
	// Create an empty pdfitem model object to start with
	PlistObject *plistObject = [[PlistObject alloc] init];
	
	// Set title and description
	plistObject.title = [values objectForKey:kPDFDictionaryKeyTitle];
	plistObject.description = [values objectForKey:kPDFDictionaryKeyDescription];
	
	plistObject.filename = [values objectForKey:kPDFDictionaryKeyFileName];
	
	// Get the thumbnail image from the thumbnail string
	plistObject.thumbnail = [UIImage imageNamed:[values objectForKey:kPDFDictionaryKeyThumbnail]];
	
	// If the category name does not exist, add it to the category list
	BOOL found = NO;
	for (Category *category in plistLoaderAndDataManager.pdfCategories)
	{
		if ([category.categoryName isEqualToString:[values objectForKey:kPDFDictionaryKeyCatgegory]])
		{
			pdfItem.category = category;
			found = YES;
			break;
		}
	}

	if (!found)
	{
		Category *newCategory = [Category createCategoryWithName:[values objectForKey:kPDFDictionaryKeyCatgegory]];
		[plistLoaderAndDataManager.pdfCategories addObject:newCategory];

		pdfItem.category = newCategory;
	}
	plistObject.url = [values objectForKey:kPDFDictionaryKeyUrl];
	plistObject.sortOrder = (NSInteger)[values objectForKey:kPDFDictionaryKeySortOrder];
	
	return plistObject;
}

@end
