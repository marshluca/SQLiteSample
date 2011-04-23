//
//  ViewController.h
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RecordDao;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
	UITableView *myTableView;
	RecordDao *recordDao;
	NSMutableArray *recordArray;
}

@property (nonatomic, retain) UITableView *myTableView;
@property (nonatomic, retain) RecordDao *recordDao;
@property (nonatomic, retain) NSMutableArray *recordArray;

@end