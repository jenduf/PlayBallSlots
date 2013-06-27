//
//  Utils.m
//  PlayBallSlots
//
//  Created by Jennifer Duffey on 5/24/13.
//  Copyright (c) 2013 Jennifer Duffey. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (float)randFloatWithMin:(int)min andMax:(int)max
{
	float diff = max - min;
	return (((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * diff) + min;
}

@end
