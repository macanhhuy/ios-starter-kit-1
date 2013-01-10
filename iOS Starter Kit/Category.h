//
//  Category.h
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Category : NSObject

@property (nonatomic, strong) NSString *categoryName;

+ (Category *)createCategoryWithName:(NSString *)categoryName;

@end
