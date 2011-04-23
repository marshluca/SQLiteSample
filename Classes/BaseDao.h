//
//  BaseDao.h
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@class FMDatabase;


@interface BaseDao : NSObject {
	FMDatabase *db;
}


@property (nonatomic, retain) FMDatabase *db;

-(NSString *)SQL:(NSString *)sql inTable:(NSString *)table;

@end