//
//  LoginPresenter.h
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LoginView.h"
#import "LoginInteractor.h"

/**********************************************************************************************
 
                                    LoginPresenter
 
    The presenter is responsible to act as the middle man between view and model.
 
    It retrieves data from the model and returns it formatted to the view.
 
    But unlike the typical MVC, it also decides what happens when you interact with the view.
 
 
 ************************************************************************************************/


@protocol LoginPresenter <NSObject>

@property(nonatomic,strong) _Nonnull id <LoginView> loginView;
@property(nonatomic,strong) _Nonnull id <LoginInteractor> loginInteractor;


/**
 Protocol method to perform the login operation.
 
 This method will be used by the View Controller to tell presenter to perform the login operation.
 
 

 @param email User entered email
 @param password User entered password
 */
-(void)loginWithEmail:(NSString * _Nullable)email
          andPassword:(NSString * _Nullable)password;

/**
 Constructor Method for LoginPresenterImpl Class.
 
 A presenter needs two parameters to do it's job.
 
 One is the View (LoginViewController in this case) which notifies presenter of any interaction, for example a button click by user.

 Second is a class which conforms to the LoginInteracor and has the actual business logic.
 
 @param view Class which conforms to the LoginView protocol.
 @param interactor Class which conforms to the LoginInteractor protocol
 
 */
-(void )initWithView:(_Nonnull id <LoginView >)view
       andInteractor:(_Nonnull id <LoginInteractor >)interactor;

@end
