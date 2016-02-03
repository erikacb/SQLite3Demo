//
//  DataController.h
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DataController : NSObject {
    sqlite3 *databaseHandle;
}

- (void)initDatabase;

@end