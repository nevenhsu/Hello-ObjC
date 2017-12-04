//
//  HTTPService.m
//  Hello-ObjC
//
//  Created by Neven on 04/11/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import "HTTPService.h"
#define URL_BASE "http://localhost:6069"
#define URL_TUTORIALS "/tutorials"


@implementation HTTPService

+ (id)instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized(self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }
    
    return sharedInstance;
}

- (void) getTutorials:(nullable onComplete)completionHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s",URL_BASE,URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *err;
        
        if (data != nil) {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err == nil) {
                completionHandler(json,nil);
            } else {
                completionHandler(nil,@"Data is corrupt. Please try again.");
            }
            
        } else {
            NSLog(@"ERROR: %@", err.debugDescription);
            completionHandler(nil,@"Problem connecting to the server");
        }
        
    }]resume];
}

@end
