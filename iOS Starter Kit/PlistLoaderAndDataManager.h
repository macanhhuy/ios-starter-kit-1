//
//  ModelDataManager.h
//  PDF Library
//
//  Created by Paul Bonneville on 8/6/12.
//  Copyright (c) 2012 GSW Advertising LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistLoaderAndDataManager : NSObject

@property (strong, nonatomic) NSMutableArray *plistData;
@property (strong, nonatomic) NSMutableArray *categoriesFromPlistData;

+ (id)sharedInstance;

@end
