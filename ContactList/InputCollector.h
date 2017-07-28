//
//  InputCollector.h
//  ContactList
//
//  Created by Hirad on 2017-07-27.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic, strong) NSString *userInput;


-(NSString *)inputConvertor :(char [255]) inputChar;



@end
