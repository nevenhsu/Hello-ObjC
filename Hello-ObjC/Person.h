//
//  Person.h
//  Hello-ObjC
//
//  Created by Neven on 29/10/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    BOOL isInsecure;
}


@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;

@end
