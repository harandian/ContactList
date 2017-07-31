//
//  InputCollector.m
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


//- (instancetype)initWithChar :(char) userInput;
//{
//    self = [super init];
//    if (self) {
//        _inputChar = userInput[;
//    }
//    return self;
//}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _userInput = [[NSArray alloc]init];
    }
    return self;
}

-(NSString *)inputConvertor :(char [255]) inputChar

{
    NSString *intputString = [[NSString alloc] initWithUTF8String: inputChar];//[NSMutableString stringWithUTF8String: self.inputChar] NSMutableString ;
    
    intputString = [intputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    self.userInput = [intputString componentsSeparatedByString:@" "];
    
    self.firstName = self.userInput[0];
    self.lastName = self.userInput[1];
    self.email = self.userInput[2];
   // self.name = [self.firstName stringByAppendingString:self.lastName];
    self.name  = [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];


    
    return self.email;
}


@end
