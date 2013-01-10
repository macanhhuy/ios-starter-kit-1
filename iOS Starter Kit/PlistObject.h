//
//  pdfItem.h
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Category.h"
#import "PlistLoaderAndDataManager.h"

@interface PlistObject : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *filename;
@property (nonatomic, strong) UIImage *thumbnail;
@property (nonatomic, strong) Category *category;
@property (nonatomic, strong) NSString *url;
@property (assign) NSInteger sortOrder;

+ (PlistObject *)createPlistObjectWithDictionary:(NSDictionary *)values inPlistLoaderAndDataManager:(PlistLoaderAndDataManager *)plistLoaderAndDataManager;

@end
