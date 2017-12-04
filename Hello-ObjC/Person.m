//
//  Person.m
//  Hello-ObjC
//
//  Created by Neven on 29/10/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)test {
    isInsecure = false;
}

-(void)setFirstName:(NSString *)newValue {
    if ([newValue isEqualToString:@"nobody"]) {
        _firstName = @"Mr.Secret";
    } else {
        _firstName = newValue;
    }
}

@end
