//
//  VideoCell.h
//  Hello-ObjC
//
//  Created by Neven on 07/12/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoCell : UITableViewCell
- (void) updateUI:(nonnull Video*)video;

@end
