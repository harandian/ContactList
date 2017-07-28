//
//  main.m
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please Enter a text");
        
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        
        
        InputCollector *newInput = [[InputCollector alloc]init];
        
        NSLog(@"YOUR TEXT IS !!!!!%@", [newInput inputConvertor:userInput]);
        
    }
    return 0;
}
