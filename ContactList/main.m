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
        
        NSLog(@"Please Enter a text");
        
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        
        
        InputCollector *newInput = [[InputCollector alloc]init];
        
        NSLog(@"YOUR TEXT IS !!!!!%@", [newInput inputConvertor:userInput]);
        
//        Contact *contact1 = [[Contact alloc]initWithName:@"@Jerry Goodlett"];
        
        NSArray *importList =[[NSArray alloc] initWithObjects: @[@"Jerry Goodlett",
                                @"Gilbert Imhoff",
                                @"Chara Mcmeans",
                                @"Justa Cabe"], nil];
        
        for ( int i = 0; i < importList.count; i++)
        {
        Contact *contact = [[Contact alloc]initWithName:importList[i]];
            
            NSLog(@"%@",contact.contactName);
        }
        
        
//        Verda Fyfe
//        Nelly Haston
//        Remedios Moret
//        Rochelle Baldonado
//        Jason Palazzo  
//        Junie Knuth]
    }
    return 0;
}
