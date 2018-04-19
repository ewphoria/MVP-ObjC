//
//  LoginPresenterImpl.m
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import "LoginPresenterImpl.h"

@implementation LoginPresenterImpl

@synthesize loginView, loginInteractor;

-(void)loginWithEmail:(nullable NSString *)email
                 andPassword:(nullable NSString *)password {
    
    [self.loginView showLoadingIndicator];
    
    [self.loginInteractor performLoginWithEmail:email andPassword:password onLoginFinishedCallback:self];
}

-(void )initWithView:(id<LoginView>)view andInteractor:(id<LoginInteractor>)interactor {

    self.loginInteractor = interactor;
    self.loginView = view;
}


-(void)loginDidFailWithError:(NSString *)error {
    [self.loginView hideLoadingIndicator];
    [self.loginView showMessage:error];
}

-(void)loginDidSucceed {
    
    [self.loginView hideLoadingIndicator];
    [self.loginView presentHomeView];
}
@end
