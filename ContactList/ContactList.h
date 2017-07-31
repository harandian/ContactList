//
//  contactList.h
//  ContactList
//
//  Created by Hirad on 2017-07-28.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface contactList : NSObject

@property (nonatomic, strong) NSMutableArray *list;

-(void) addContact :(id) contact;

@end
