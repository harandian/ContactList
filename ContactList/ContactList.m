//
//  contactList.m
//  ContactList
//
//  Created by Hirad on 2017-07-28.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "contactList.h"

@implementation contactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) addContact :(id) contact {
    
    [self.list addObject:contact];
    
}

- (NSString*)description
{
    return [NSString stringWithFormat:[Contact description]];
}



@end
