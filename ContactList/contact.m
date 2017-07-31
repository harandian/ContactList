//
//  Contact.m
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//  

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName :(NSString*) contact email: (NSString*) email
{
    self = [super init];
    if (self) {
        _contactName = contact;
        _email = email;
    }
    return self;
}

-(NSString *) description {
    
    return self.contactName;
    
}


@end
