//
//  ViewController.m
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import "ViewController.h"
#import "RecordDao.h"
#import "Record.h"

@implementation ViewController

@synthesize myTableView, recordDao, recordArray;

- (id)init {
	if (self = [super init]) {
		recordDao = [[RecordDao alloc] init];
		recordArray = [[recordDao resultSet] retain];

		// [recordDao insertWithTitle:@"TEST TITLE" Body:@"TEST BODY"];
		// [recordDao updateAtIndex:0 Title:@"UPDATE TEST" Body:@"UPDATE BODY"];
		// [recordDao deleteAtIndex:1];
		
		/*for (int i=1; i<=[recordArray count]; i++) {
			Record *note = [recordArray objectAtIndex:i-1];
			[recordDao updateAtIndex:i Title:@"title" Body:note.body];
		}*/	
	}
		
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	myTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	myTableView.delegate = self;
	myTableView.dataSource = self;
	self.view = myTableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [recordArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}
	
	Record *tr = (Record *)[recordArray objectAtIndex:indexPath.row];
	cell.textLabel.text = [NSString stringWithFormat:@"%i %@--%@", [tr getIndex], tr.title, tr.body];
	return cell;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

- (void)dealloc {
	[myTableView release];
	[recordDao release];
	[recordArray release];
	[super dealloc];
}

@end