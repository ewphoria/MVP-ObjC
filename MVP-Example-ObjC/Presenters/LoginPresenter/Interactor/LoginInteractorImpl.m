//
//  LoginInteractorImpl.m
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import "LoginInteractorImpl.h"

@implementation LoginInteractorImpl

-(void)performLoginWithEmail:(NSString *)email
                 andPassword:(NSString *)password
     onLoginFinishedCallback:(_Nonnull id <OnLoginFinished>)onLoginFinished{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        if (email != nil && email.length != 0) {
            [onLoginFinished loginDidSucceed];
        } else {
            [onLoginFinished loginDidFailWithError:@"Credentials validation failed."];
        }
    });
}

-(NSString *)isValidCredential:(NSString *)email
                   andPassword:(NSString *)password {
    
    NSString *error = nil;
    
    if (email == nil || email.length == 0) {
        
        error = @"Please enter email id.";
    }
    
    return error;
}


@end
