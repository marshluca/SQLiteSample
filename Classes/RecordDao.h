//
//  RecordDao.h
//  SQLiteSample
//
//  Created by marshluca on 10-12-29.
//  Copyright 2010 www.marshluca.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDao.h"


@interface RecordDao : BaseDao {
}

-(NSMutableArray *)resultSet;
-(void)insertWithTitle:(NSString *)title Body:(NSString *)body;
-(BOOL)updateAtIndex:(int)index Title:(NSString *)title Body:(NSString *)body;
-(BOOL)deleteAtIndex:(int)index;

@end
