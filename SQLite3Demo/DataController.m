//
//  DataController.m
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import "DataController.h"

@implementation DataController

// Method to open a database, the database will be created if it doesn't exist
-(void)initDatabase
{
    // Create a string containing the full path to the sqlite.db inside the documents folder
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *databasePath = [documentsDirectory stringByAppendingPathComponent:@"sqlite.db"];
    
    // Check to see if the database file already exists
    bool databaseAlreadyExists = [[NSFileManager defaultManager] fileExistsAtPath:databasePath];
    
    // Open the database and store the handle as a data member
    if (sqlite3_open([databasePath UTF8String], &databaseHandle) == SQLITE_OK)
    {
        // Create the database if it doesn't yet exists in the file system
        if (!databaseAlreadyExists)
        {
            // Create the PERSON table
            const char *sqlStatement = "CREATE TABLE IF NOT EXISTS PERSON (ID INTEGER PRIMARY KEY AUTOINCREMENT, FIRSTNAME TEXT, LASTNAME TEXT, BIRTHDAY DATE)";
            char *error;
            if (sqlite3_exec(databaseHandle, sqlStatement, NULL, NULL, &error) == SQLITE_OK)
            {
                // Create the ADDRESS table with foreign key to the PERSON table
                sqlStatement = "CREATE TABLE IF NOT EXISTS ADDRESS (ID INTEGER PRIMARY KEY AUTOINCREMENT, STREETNAME TEXT, STREETNUMBER INT, PERSONID INT, FOREIGN KEY(PERSONID) REFERENCES PERSON(ID))";
                if (sqlite3_exec(databaseHandle, sqlStatement, NULL, NULL, &error) == SQLITE_OK)
                {
                    NSLog(@"Database and tables created.");
                }
                else
                {
                    NSLog(@"Error: %s", error);
                }
            }
            else
            {
                NSLog(@"Error: %s", error);
            }
        }
    }
}

// Close the database connection when the DataController is disposed
- (void)dealloc {
    sqlite3_close(databaseHandle);
    [super dealloc];
}

@end