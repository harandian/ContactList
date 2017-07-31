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
       
        
        //setting up the inital saved contact list
        NSString *test = @"Test";
        
      
        
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
        
        //[mainList addContact:contactOverride];
        NSLog(@"%@",mainList.list);
        //NSLog(@"%@",contactOverride);

// creating a new contact
        NSLog(@"> Enter a new contact ");
        
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        
        
        InputCollector *newInput = [[InputCollector alloc]init];
        
        NSLog(@"YOUR TEXT IS !!!!!%@", [newInput inputConvertor:userInput]);
        
       // if (newInput isNotEqualTo:"Quit")
            
       // {
        Contact *newContact = [[Contact alloc] initWithName: newInput.userInput email: newInput.userInput];
        //}
        
        [mainList addContact:newContact];
        
        NSLog(@"%@",mainList.list);
        NSLog(@"%i",mainList.list);

        NSLog(@"%@", [mainList description]);

//        for ( int i = 0; i < mainList.list.count; i++)
//        {
//            
//            NSLog(@"%@",mainList);
//            
//        }
        

        
        

        
//        Verda Fyfe
//        Nelly Haston
//        Remedios Moret
//        Rochelle Baldonado
//        Jason Palazzo  
//        Junie Knuth]
    }
    return 0;
}
