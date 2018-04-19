//
//  LoginPresenterImpl.h
//  MVP-Example-ObjC
//
//  Created by myMac on 03/02/18.
//  Copyright © 2018 Love Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginPresenter.h"
#import "LoginView.h"


@interface LoginPresenterImpl : NSObject<LoginPresenter, OnLoginFinished>

@end
