//
//  Contact.h
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *contactName;
@property NSString *email;

- (instancetype)initWithName :(NSString*) contact email: (NSString*) email;


@end
