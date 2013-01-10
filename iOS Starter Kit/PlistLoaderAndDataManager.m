//
//  ModelDataManager.m
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import "PlistLoaderAndDataManager.h"
#import "PlistObject.h"

@implementation PlistLoaderAndDataManager

@synthesize plistData;
@synthesize categoriesFromPlistData;

static PlistLoaderAndDataManager *sharedInstance = nil;

+ (PlistLoaderAndDataManager *)sharedInstance
{
    if (nil != sharedInstance)
	{
        return sharedInstance;
    }
	
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        sharedInstance = [[PlistLoaderAndDataManager alloc] init];
    });
	
    return sharedInstance;
}

- (PlistLoaderAndDataManager *)init
{
	self = [super init];
    if (self)
	{
		// Initialize the PDF list array for storing PDF model objects
		plistData = [[NSMutableArray alloc] init];
		categoriesFromPlistData = [[NSMutableArray alloc] init];
		
		// Load the data
		NSString *filePath = [[NSBundle mainBundle] pathForResource:@"sample-plist-data" ofType:@"plist"];
		NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:filePath];
		
		for (NSString *dictionaryFromPlist in dictionary)
		{
			NSDictionary *dictionary = [dictionary objectForKey:dictionaryFromPlist];
			
			PlistObject *newPdfItem = [PlistObject createPDFItemWithDictionary:pdfDictionary inModelDataManager:self];
			[samplePlistData addObject:newPdfItem];
		}
		
		NSLog(@"PDF LIST COUNT: %u", pdfList.count);
		NSLog(@"PDF CATEGORY COUNT: %u", pdfCategories.count);
    }
	
	NSLog(@"MODEL DATA MANAGER HAS BEEN INITIALIZED");
	
	return self;
}

@end
