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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        Contact *contact1 = [[Contact alloc]initWithName:@"@Jerry Goodlett"];
        
        NSMutableArray *importListName =[[NSMutableArray alloc] initWithObjects: @[@"Jerry Goodlett",
                                @"Gilbert Imhoff",
                                @"Chara Mcmeans",
                                @"Justa Cabe"], nil];
        
        NSMutableArray *importListEmails =[[NSMutableArray alloc] initWithObjects: @[@"JerryG@bing.com",
            @"GilberI@bing.com",
            @"CharaM@bing.com",
            @"JustaC@bing.com"], nil];
        
        
        for ( int i = 0; i < importListName.count; i++)
        {
        
            Contact *contact = [[Contact alloc]initWithName:importListName[i] email:importListEmails[i]];
            
            NSLog(@"%@,%@",contact.contactName, contact.email);
        }
        
        
        NSLog(@"Enter a new contact ");
        
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        
        
        InputCollector *newInput = [[InputCollector alloc]init];
        
        NSLog(@"YOUR TEXT IS !!!!!%@", [newInput inputConvertor:userInput]);
        

        
//        Verda Fyfe
//        Nelly Haston
//        Remedios Moret
//        Rochelle Baldonado
//        Jason Palazzo  
//        Junie Knuth]
    }
    return 0;
}
