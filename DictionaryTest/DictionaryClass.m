//
// Created by JuergenPichler on 09.04.14.
// Copyright (c) 2014 WhiteArrow GmbH. All rights reserved.
//

#import "DictionaryClass.h"



@implementation DictionaryClass

+(NSMutableDictionary *)createMutableDictionary
{
	NSMutableDictionary *_mutableDictionary;
	_mutableDictionary = [[NSMutableDictionary alloc]
	                               init];

	[_mutableDictionary setObject:@"ErsterEintrag"
	                       forKey:@"1"];

	[_mutableDictionary setObject:@"ZweiterEintrag"
	                       forKey:@"2"];

	NSDate *date = [NSDate date];
	[_mutableDictionary setObject:date
	                       forKey:@"3"];

	return _mutableDictionary;
}

+(void)logMutableDictionary:(NSMutableDictionary *) mutableDictionary
{
	NSEnumerator *enumerator = [mutableDictionary keyEnumerator];
	id key;
	while (key = [enumerator nextObject]) {

		id value = [mutableDictionary objectForKey:key];
		NSLog(@"%s Objekt hat key %@ und value %@"
		      , __PRETTY_FUNCTION__, key, value);
	}
}


@end