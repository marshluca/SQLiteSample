//
//  SQLiteSampleAppDelegate.m
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import "SQLiteSampleAppDelegate.h"
#import "ViewController.h"


@implementation SQLiteSampleAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application 
{		
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	ViewController *controller = [[ViewController alloc] init];
	
	[window addSubview:controller.view];
	[window makeKeyAndVisible];
}

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end