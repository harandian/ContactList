//
//  main.m
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "contactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        contactList *mainList = [[contactList alloc] init];
       
        BOOL Run = YES;
        
        //setting up the inital saved contact list
      
        
      
        
        NSArray *importListName = @[@"Jerry Goodlett",
                                @"Gilbert Imhoff",
                                @"Chara Mcmeans",
                                @"Justa Cabe"];
        
        NSArray *importListEmails = @[@"JerryG@bing.com",
            @"GilberI@bing.com",
            @"CharaM@bing.com",
            @"JustaC@bing.com"];
        
        NSMutableArray *contactOverride = [NSMutableArray new];
        
        
        
        for ( int i = 0; i < importListName.count; i++)
        {
        
            Contact *contact = [[Contact alloc]initWithName:importListName[i] email:importListEmails[i]];
            
            NSLog(@"%@,%@",contact.contactName, contact.email);
            
            [contactOverride addObject:contact];
            
        }
        
        [mainList.list addObjectsFromArray:contactOverride];
        
        NSLog(@"%@",mainList.list);

// creating a new contact
        
        while (Run) {
        
        NSLog(@"> Enter a new contact first name last name and email ");
        
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        
        
        InputCollector *newInput = [[InputCollector alloc]init];
                    
        NSLog(@"YOUR TEXT IS !!!!!%@", [newInput inputConvertor:userInput]);
        
        
        Contact *newContact = [[Contact alloc] initWithName:newInput.name email:newInput.email];
        
        [mainList addContact:newContact];
        
        NSLog(@"%@",mainList.list);
 

        }
        return 0;
    }
    return 0;
}
