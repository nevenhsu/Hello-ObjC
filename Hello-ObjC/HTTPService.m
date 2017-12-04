//
//  HTTPService.m
//  Hello-ObjC
//
//  Created by Neven on 04/11/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService

+ (id)instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized(self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }
    
    return sharedInstance;
}


@end
