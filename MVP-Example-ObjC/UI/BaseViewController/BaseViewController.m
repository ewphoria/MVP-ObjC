//
//  ViewController.m
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)showMessageWithString:(nonnull NSString *)message {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"MVP Example"
                                                                  message:message
                                                           preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(void)showLoadingIndicator {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

-(void)hideLoadingIndicator {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:FALSE];
}
@end
