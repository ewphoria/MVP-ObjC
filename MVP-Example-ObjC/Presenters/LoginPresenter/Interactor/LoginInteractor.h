//
//  LoginInteractor.h
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OnLoginFinished <NSObject>

-(void)loginDidFailWithError:(nonnull NSString*)error;

-(void)loginDidSucceed;

@end

@protocol LoginInteractor <NSObject>


/**
 <#Description#>

 @param email <#email description#>
 @param password <#password description#>
 @param onLoginFinished <#onLoginFinished description#>
 */
-(void)performLoginWithEmail:( NSString * _Nonnull )email
                 andPassword:( NSString * _Nonnull )password
     onLoginFinishedCallback:(_Nonnull id <OnLoginFinished>)onLoginFinished;


@end

