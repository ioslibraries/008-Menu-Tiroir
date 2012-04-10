//
//  ILAppDelegate.h
//  Deck
//
//  Created by jeremy Templier on 05/04/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ILLeftViewController, ILViewController;

@interface ILAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ILLeftViewController* leftViewController;
@property (strong, nonatomic) ILViewController* centerViewController;
@property (strong, nonatomic) ILViewController* rightViewController;
@end
