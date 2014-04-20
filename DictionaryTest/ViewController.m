//
//  ViewController.m
//  DictionaryTest
//
//  Created by JuergenPichler on 09.04.14.
//  Copyright (c) 2014 WhiteArrow GmbH. All rights reserved.
//

#import "ViewController.h"
#import "DictionaryClass.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	/*DictionaryClass *dictionaryClass = [[DictionaryClass alloc]
	                                                     init];
    */

	NSMutableDictionary *mutableDictionary = [DictionaryClass createMutableDictionary];
	NSLog(@"%s mutableDictionary hat %i Einträge"
	      , __PRETTY_FUNCTION__, [mutableDictionary count]);

	[DictionaryClass logMutableDictionary:mutableDictionary];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end