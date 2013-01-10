//
//  Category.m
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import "Category.h"
#import "ModelDataManager.h"

@implementation Category

@synthesize categoryName;

+ (Category *)createCategoryWithName:(NSString *)categoryName
{	
	Category *category = [[Category alloc] init];
	category.categoryName = categoryName;

	return category;
}

@end
