//
//  Person.h
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Address.h"

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSDate *birthday;
    Address *address;
}

@property (nonatomic, retain) NSString* firstName;
@property (nonatomic, retain) NSString* lastName;
@property (nonatomic, retain) NSDate* birthday;
@property (nonatomic, retain) Address* address;

-(id)initWithFirstName:(NSString*)aFirstName andLastName:(NSString*)aLastName andBirthday:(NSDate*)aBirthday andAddress:(Address*)anAddress;

@end