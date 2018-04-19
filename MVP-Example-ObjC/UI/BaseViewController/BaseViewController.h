//
//  ViewController.h
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

-(void)showMessageWithString:(nonnull NSString *)message;

-(void)showLoadingIndicator;

-(void)hideLoadingIndicator;

@end

