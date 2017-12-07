//
//  HTTPService.h
//  Hello-ObjC
//
//  Created by Neven on 04/11/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id)instance;

- (void) getTutorials:(nullable onComplete)completionHandler;

@end
