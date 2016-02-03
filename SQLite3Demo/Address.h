//
//  Address.h
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Address : NSObject {
    NSString *streetName;
    NSNumber *streetNumber;
}

@property (nonatomic, retain) NSString* streetName;
@property (nonatomic, retain) NSNumber* streetNumber;

-(id)initWithStreetName:(NSString*)aStreetName andStreetNumber:(NSNumber*)streetNumber;

@end