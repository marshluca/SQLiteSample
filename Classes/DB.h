//
//  Database.h
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

@interface DB : NSObject {
	FMDatabase *db;
}

- (BOOL)initDatabase;
- (void)closeDatabase;
- (FMDatabase *)getDatabase;

@end
