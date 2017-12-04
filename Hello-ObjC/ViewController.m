//
//  ViewController.m
//  Hello-ObjC
//
//  Created by Neven on 28/10/2017.
//  Copyright © 2017 Neven. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()
@property (nonatomic,strong) NSString *vehicle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"Name: %@", self.name);
    
    self.name = @"Jack";
    
    _name = @"Peter";
    
    NSLog(@"Name: %@", _name);
    
    [self setName:@"Sylvia"];
    
    NSLog(@"Name: %@", [self name]);
    
    
    Person *person1 = [[Person alloc]init];
    person1.lastName = @"Xu";
    [person1 setFirstName:@"nobody"];
    
    NSLog(@"%@",[person1 firstName]);
    

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
