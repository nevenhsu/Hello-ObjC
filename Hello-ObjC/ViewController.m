//
//  ViewController.m
//  Hello-ObjC
//
//  Created by Neven on 28/10/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "HTTPService.h"


@interface ViewController ()
@property (nonatomic,strong) NSString *vehicle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [[HTTPService instance] getTutorials:^(NSDictionary * _Nullable dataDict, NSString * _Nullable errMessage) {
        if (dataDict) {
            NSLog(@"Dictionary: %@", dataDict.debugDescription);
        } else if (errMessage) {
            // Display alert to user
        }
    }];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBtnTapped:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WELCOME" message:@"WELCOME to the world of Objective-C" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil ];
    [alert addAction:closeAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
