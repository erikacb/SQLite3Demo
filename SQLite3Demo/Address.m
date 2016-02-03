//
//  Address.m
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import "Address.h"

@implementation Address

@synthesize streetName;
@synthesize streetNumber;

// Custom initializer
-(id)initWithStreetName:(NSString*)aStreetName andStreetNumber:(NSNumber*)aStreetNumber {
    self = [super init];
    if(self) {
        self.streetName = aStreetName;
        self.streetNumber = aStreetNumber;
    }
    return self;
}

// Cleanup all contained properties
- (void)dealloc {
    [self.streetName release];
    [self.streetNumber release];
    [super dealloc];
}

@end