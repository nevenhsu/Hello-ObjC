//
//  VideoVC.h
//  Hello-ObjC
//
//  Created by Neven on 11/12/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property (nonatomic,strong) Video *video;
@end
