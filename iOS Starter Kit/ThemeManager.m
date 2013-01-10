//
//  ThemeManager.m
//  iOS Starter Kit
//
//  Created by Paul Bonneville on 1/8/13.
//  Copyright (c) 2013 White Rabbit & Company. All rights reserved.
//

#import "ThemeManager.h"

@implementation ThemeManager

//+(void)addBlueBackgroundToObject:(id)object
//{
//	if ([object isKindOfClass:[UIButton class]])
//	{
//		UIButton *objectAsButton = (UIButton *)object;
//		
//		UIImage *backgroundImage = [[UIImage imageNamed:@"button-background-strechable"]
//									resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
//		
//		[objectAsButton setBackgroundImage:backgroundImage forState:UIControlStateNormal];
//		[objectAsButton setBackgroundColor:nil];
//	}
//	
//	if ([object isKindOfClass:[UISegmentedControl class]])
//	{
//		UISegmentedControl *objectAsSegmentedControl = (UISegmentedControl *)object;
//		
//		UIImage *backgroundImage = [[UIImage imageNamed:@"button-background-strechable"]
//									resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
//		
//		[objectAsSegmentedControl setBackgroundImage:backgroundImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//		[objectAsSegmentedControl setBackgroundColor:nil];
//		
//		UIFont *font = [UIFont systemFontOfSize:14.0f];
//		NSDictionary *attributes = [NSDictionary dictionaryWithObject:font
//															   forKey:UITextAttributeFont];
//		[objectAsSegmentedControl setTitleTextAttributes:attributes
//												forState:UIControlStateNormal];
//	}
//}
//
//+(void)customizeSlider:(UISlider *)slider
//{
//	UIImage *sliderThumb = [UIImage imageNamed:@"slider-thumb"];
//	UIImage *sliderTrack = [[UIImage imageNamed:@"slider-track"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 1, 0, 1)];
//	
//	[slider setThumbImage:sliderThumb forState:UIControlStateNormal];
//	[slider setMinimumTrackImage:sliderTrack forState:UIControlStateNormal];
//	[slider setMaximumTrackImage:sliderTrack forState:UIControlStateNormal];
//	[slider setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
//}

@end
