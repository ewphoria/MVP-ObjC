//
//  LoginViewController.m
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginPresenterImpl.h"
#import "LoginInteractorImpl.h"

@interface LoginViewController ()

@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;

@property (strong,nonatomic) LoginPresenterImpl *loginPresenter;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginPresenter = [LoginPresenterImpl new];
    
    [self.loginPresenter initWithView:self andInteractor:[LoginInteractorImpl new]];
    
}

-(IBAction)actionLogin:(id)sender {
 
    [self.loginPresenter loginWithEmail:self.txtEmail.text andPassword:self.txtPassword.text];
}

#pragma mark - LoginView Methods Implementation

-(void)showMessage:(NSString *)message {
    [self showMessageWithString:message];
}

-(void)presentHomeView {
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:[UIViewController new]];
    [self presentViewController:navController animated:YES completion:nil];
}

-(void)showLoadingIndicator {
    [self showLoadingIndicator];
}

-(void)hideLoadingIndicator {
    [self hideLoadingIndicator];
}

@end
