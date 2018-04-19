//
//  LoginView.h
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>


/**********************************************************************************************

                        LoginView
 
    This class belongs to the View part of MVP architecture.
 
    The view is usually conformed by a View Controller.
    The only thing that the view will do is call a method from the presenter every time there is
    an interface action (a button click for example) or some UI update like showing indicator or
    moving to another View Controller.
 
    In this particular example LoginView will be conformed by a LoginViewController and implement
    all the methods of the LoginView protocol.

************************************************************************************************/

@protocol LoginView <NSObject>

@required

-(void)showMessage:(NSString *)message;

-(void)presentHomeView;

-(void)showLoadingIndicator;

-(void)hideLoadingIndicator;

@end
